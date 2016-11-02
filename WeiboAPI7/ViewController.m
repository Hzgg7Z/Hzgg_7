//
//  ViewController.m
//  WeiboAPI7
//
//  Created by Hzgg_7 on 16/11/2.
//  Copyright © 2016年 Hzgg_7. All rights reserved.
//
#import "MyHon.h"
#import "HTTPKit.h"
#import "DataModels.h"
#import "MyCell.h"
#import "UIImageView+WebCache.h"
#import "ViewController.h"

@interface ViewController ()<UIWebViewDelegate,UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout>
@property(strong,nonatomic)NSMutableDictionary*APIListBook;
@property(strong,nonatomic)NSMutableArray*urlsArray;
@property(strong,nonatomic)NSMutableArray *TextArray;
@end
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor whiteColor];
    
    
    [self ObtainAPI];
    
}
-(void)ObtainAPI{//拿原始数据。
    NSInteger Number=80;
    if(self.tokenString) {
        [HTTPKit HTTPGET:self.APIListBook[APIKey_public_timeline] param:@{@"access_token":self.tokenString,@"count":@(Number)} success:^(id responseObject) {
            NSDictionary *MyDict=[NSJSONSerialization JSONObjectWithData:responseObject options:NSJSONReadingMutableLeaves error:nil];
            for (NSDictionary* statusDiction in MyDict[@"statuses"]) {
                My_Weibo *mode=[My_Weibo modelObjectWithDictionary:statusDiction];
                NSString *imageUrl=mode.user.avatarLarge;
                [self.urlsArray addObject:imageUrl];
                My_Weibo *modeText=[My_Weibo modelObjectWithDictionary:statusDiction];
                NSString *Text=modeText.text;
                [self.TextArray addObject:Text];
                //                NSLog(@"+++++++++++++++%@",Text);
            }
            //            NSLog(@"%@",self.urlsArray);
            //            NSLog(@"%@",self.TextArray);
            //插入渲染。
            [self AddCollectionView:3 and:3];
        } failBlock:nil];
    }else{
        [self MyWed];
    }
}
#pragma mark -拿数据；
- (void) MyWed {
    NSString* path =[NSString stringWithFormat:@"https://api.weibo.com/oauth2/authorize?client_id=%@&redirect_uri=%@",client_id,redirect_uri];
    NSURL* url = [NSURL URLWithString:path];
    NSURLRequest* request = [NSURLRequest requestWithURL:url];
    UIWebView* webView = [[UIWebView alloc]initWithFrame:self.view.bounds];
    [self.view addSubview:webView];
    [webView loadRequest:request];
    webView.delegate = self;
    webView.tag=-1;
}
- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType{
    if([request.URL.absoluteString containsString:@"code="]) {
        NSLog(@"第一次的API请求");
        NSArray* sequances = [request.URL.absoluteString componentsSeparatedByString:@"="];
        NSString* code = [sequances lastObject];
        [self getToken:code];
    }
    return YES;
}
- (void) getToken :(NSString*) code {
    NSDictionary* param = @{
                            @"client_id"    : client_id,
                            @"client_secret": client_secret,
                            @"grant_type"   : @"authorization_code",
                            @"code"         : code,
                            @"redirect_uri" : redirect_uri
                            };
    [HTTPKit HTTPPOST:self.APIListBook[APIKey_access_token] param:param success:^(id responseObject) {
        NSError* error;
        NSDictionary* TokenDict = [NSJSONSerialization JSONObjectWithData:responseObject options:NSJSONReadingMutableLeaves error:&error];
        if(error) {
            NSLog(@"转化失败了");
        }else{
            NSString* token = TokenDict[@"access_token"];
            [[NSUserDefaults standardUserDefaults]setObject:token forKey:tokenCacheKey];
            UIView* safari = [self.view viewWithTag:-1];
            dispatch_async(dispatch_get_main_queue(), ^{
                [UIView animateWithDuration:1.0 animations:^{
                    safari.alpha = 0;
                }completion:^(BOOL finished) {
                    [safari removeFromSuperview];
                    NSLog(@"第二次拿到的Token=%@",[[NSUserDefaults standardUserDefaults]valueForKey:tokenCacheKey]);
                }];
            });
        }
    } failBlock:nil];
}
- (NSMutableDictionary<NSString *,NSString *> *)APIListBook {
    if (!_APIListBook) {
        self.APIListBook = @{}.mutableCopy;
        self.APIListBook[APIKey_authorize] = @"https://api.weibo.com/oauth2/authorize";
        self.APIListBook[APIKey_access_token] = @"https://api.weibo.com/oauth2/access_token";
        self.APIListBook[APIKey_public_timeline] = @"https://api.weibo.com/2/statuses/public_timeline.json";
    }
    return _APIListBook;
}
-(NSMutableArray *)urlsArray{
    if (!_urlsArray) {
        _urlsArray=[[NSMutableArray alloc]init];
    }
    return _urlsArray;
}
#pragma mark -刷新UI
//—————————————————————————————————————

#pragma mark - 渲染在UI
-(void)AddCollectionView:(int)line and:(int)row{
    //    int line = 2;
    //    int row = 4;
    CGRect frameOfCollectionview = CGRectMake(0, 20, self.view.bounds.size.width,self.view.bounds.size.height-20);
    CGFloat margin = 10.0;
    UICollectionViewFlowLayout *flow=[[UICollectionViewFlowLayout alloc]init];
    UICollectionView*collview=[[UICollectionView alloc]initWithFrame:frameOfCollectionview collectionViewLayout:flow];
    flow.sectionInset = UIEdgeInsetsMake(margin, margin, margin, margin);
    flow.itemSize=CGSizeMake((collview.bounds.size.width - margin*2 - (row-1)*margin) / row,(collview.bounds.size.height - margin * (line+1)) / line);
    flow.minimumInteritemSpacing = margin;
    flow.minimumLineSpacing = margin;
    flow.scrollDirection = UICollectionViewScrollDirectionVertical;//设置滑动方向。
    collview.dataSource=self;
    collview.backgroundColor = self.view.backgroundColor;
    [self.view addSubview:collview];
    [collview registerClass:[MyCell class] forCellWithReuseIdentifier:@"Cell"];
    //    _collview.alwaysBounceVertical=NO;//竖直方向
    //    _collview.alwaysBounceHorizontal=NO;//水平方向
}
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return self.urlsArray.count;
}
-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    MyCell *cell=[collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    NSURL*url=[NSURL URLWithString:[NSString stringWithFormat:@"%@",self.urlsArray[indexPath.row]]];
    [cell.imageV sd_setImageWithURL:url placeholderImage:[UIImage imageWithContentsOfFile:@"SBB"] options:SDWebImageRetryFailed progress:^(NSInteger receivedSize, NSInteger expectedSize) {
        
        
    } completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType, NSURL *imageURL) {
        NSData*data=[NSData dataWithContentsOfURL:url];
        [cell.mylabel addLabelScriptColor:RedColor ScriptSize:20 Text:[NSString stringWithFormat:@"%@",self.TextArray[indexPath.row]] Direction:0 ImageData:data];
    }];
//    cell.mylabel.text=[NSString stringWithFormat:@"%ld",(long)indexPath.row];
    return cell;
}
-(NSMutableArray *)TextArray{
    if (!_TextArray) {
        _TextArray=[NSMutableArray array];
    }
    return _TextArray;
}
#pragma mark - Getter & Setter
- (NSString *)tokenString{
    NSString* fromIO = [[NSUserDefaults standardUserDefaults]valueForKey:tokenCacheKey];
    if (fromIO) {
        NSLog(@"从缓存中读取");
    }else{
        NSLog(@"从网络中读取");
    }
    return fromIO;
}
@end
