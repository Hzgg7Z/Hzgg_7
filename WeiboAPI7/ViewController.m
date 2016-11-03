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
#import "PushColnttoller.h"

@interface ViewController ()<UIWebViewDelegate,UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout>
@property(strong,nonatomic)UIWebView*webView;
@property(strong,nonatomic)NSString*tokenString;
@property(strong,nonatomic)NSMutableDictionary*APIListBook;
@property(strong,nonatomic)NSMutableArray*urlsArray;
@property(strong,nonatomic)NSMutableArray *TextArray;
@property(strong,nonatomic)NSMutableArray<User*>*dataModelArr;
@end
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor whiteColor];
    
    if (self.tokenString) {
        //内存获取成功 直接用token获取数据
        [self requestGetWeiBoStatusWith:_tokenString];
        
    } else {
        [self.view addSubview:self.webView];
        
    }
    
}
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
    return _dataModelArr.count;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    MyCell *cell;
    if (cell == nil) {
        cell=[collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
        cell.model = _dataModelArr[indexPath.row];
    }
    return cell;
}
-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    PushColnttoller *page=[[PushColnttoller alloc]init];
    page.view.backgroundColor=Scolor;
    [self presentViewController:page animated:YES completion:^{
        page.view.backgroundColor=Scolor;
        NSLog(@"推出了一个什么鬼");
    }];
}
//—————————————————————————————————————
//—————————————————————————————————————
//—————————————————————————————————————
//—————————————————————————————————————
//—————————————————————————————————————
//—————————————————————————————————————
//—————————————————————————————————————
//—————————————————————————————————————
//—————————————————————————————————————
//—————————————————————————————————————
//—————————————————————————————————————
//—————————————————————————————————————
//—————————————————————————————————————
#pragma make ---通过UIWebViewDelegate拿数据
-(BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType{
    if ([request.URL.absoluteString containsString:@"code="]) {
        //授权成功 获取Code
        NSString *code = [[request.URL.absoluteString componentsSeparatedByString:@"code="]lastObject];
        //用授权Code获取Token
        [self requestGetTokenWithCode:code];
    }
    return YES;
}

#pragma make ---网络请求 Getter & Setter
/**获取Token*/
-(void)requestGetTokenWithCode:(NSString *)code{
    //获取code成功 移除webView
    //交动画 移除webView
    [UIView animateWithDuration:1 animations:^{
        _webView.alpha = 0;
    } completion:^(BOOL finished) {
        [_webView removeFromSuperview];
    }];
    //用code 获取token
    [HTTPKit HTTPPOST:self.APIListBook[APIKey_access_token]  param:@{@"client_id":client_id,
                                                                     @"client_secret":client_secret,
                                                                     @"grant_type":@"authorization_code",
                                                                     @"code":code,
                                                                     @"redirect_uri":redirect_uri}
              success:^(id responseObject) {
                  NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:responseObject options:(NSJSONReadingMutableContainers) error:nil];
                  //获取token成功 保存token以便下次登录
                  [[NSUserDefaults standardUserDefaults]setValue:[dic valueForKey:@"access_token"] forKey:tokenCacheKey];
                  //用获取到的token请求微博数据
                  [self requestGetWeiBoStatusWith:[dic valueForKey:@"access_token"]];
              } failBlock:nil];
}
/**获取weibo*/
-(void)requestGetWeiBoStatusWith:(NSString *)token{
    //获取数据
    NSInteger Number=50;
    [HTTPKit HTTPGET:self.APIListBook[APIKey_public_timeline] param:@{@"access_token":token,@"count":@(Number)} success:^(id responseObject) {
        //        NSString *dataJsonStr = [[NSString alloc]initWithData:responseObject encoding:NSUTF8StringEncoding];
        //获取数据成功 考虑是否缓存数据  并布局
        //        NSLog(@"%@",dataJsonStr);
        NSDictionary *MyDict=[NSJSONSerialization JSONObjectWithData:responseObject options:NSJSONReadingMutableLeaves error:nil];
        _dataModelArr = [NSMutableArray array];
        for (NSDictionary* statusDiction in MyDict[@"statuses"]) {
            My_Weibo *mode=[My_Weibo modelObjectWithDictionary:statusDiction];
            [_dataModelArr addObject:mode.user];
        }
        [self AddCollectionView:4 and:2];
    } failBlock:nil];
}
#pragma make ----懒加载
-(NSMutableArray *)TextArray{
    if (!_TextArray) {
        _TextArray=[NSMutableArray array];
    }
    return _TextArray;
}

- (NSMutableDictionary<NSString *,NSString *> *)APIListBook {
    if (!_APIListBook) {
        self.APIListBook = @{}.mutableCopy;
        self.APIListBook[APIKey_authorize] = @"https://api.weibo.com/oauth2/authorize";
        self.APIListBook[APIKey_access_token] = @"https://api.weibo.com/oauth2/access_token";
        self.APIListBook[APIKey_public_timeline] = @"https://api.weibo.com/2/statuses/friends_timeline.json";
    }
    return _APIListBook;
}

-(NSMutableArray *)urlsArray{
    if (!_urlsArray) {
        _urlsArray=[[NSMutableArray alloc]init];
    }
    return _urlsArray;
}
/**懒加载获取token 只考虑缓存获取*/
-(NSString *)tokenString{
    if (!_tokenString) {
        //第一次调用self.tokenString 缓存获取token
        _tokenString = [[NSUserDefaults standardUserDefaults]valueForKey:tokenCacheKey];
    }
    return _tokenString;
}
/**加载webView 引导用户收取token*/
-(UIWebView *)webView{
    if (!_webView) {
        _webView = [[UIWebView alloc]initWithFrame:self.view.bounds];
        [_webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"https://api.weibo.com/oauth2/authorize?client_id=%@&redirect_uri=%@",client_id,redirect_uri]]]];
        _webView.backgroundColor = [UIColor yellowColor];
        //回路进入代理方法 获取Code
        _webView.delegate = self;
    }
    return _webView;
}
@end
