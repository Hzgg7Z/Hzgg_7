//
//  MyCell.m
//  bfdmbsdbdbfgbjdsbgkbdg
//
//  Created by yozoz on 16/11/2.
//  Copyright © 2016年 Hzgg. All rights reserved.
//

#import "MyCell.h"
#import "UIImageView+WebCache.h"
#import "SDImageCache.h"
@interface MyCell ()
@property(strong,nonatomic)Hunbian*mylabel;
@property(strong,nonatomic)UIImageView*imageV;
@end

@implementation MyCell
- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        self.mylabel=[[Hunbian alloc]init];
        [self.contentView addSubview:self.mylabel];
        //—————————————————————————————————————
        self.imageV=[UIImageView alloc].init;
        [self.contentView addSubview:self.imageV];
    }
    return self;
}
-(void)layoutSubviews{
    [super layoutSubviews];
    
    
    self.imageV.frame=CGRectMake(0, 0, self.contentView.bounds.size.width, self.contentView.bounds.size.height*0.8);
    self.mylabel.frame=CGRectMake(0,CGRectGetMaxY(self.imageV.frame), self.contentView.bounds.size.width, self.contentView.bounds.size.height*0.2);
}
//-(void)setLabel:(UILabel *)label{
//    _mylabel.text = label.text;
//    _mylabel = label;
//}
//-(void)setMylabel:(Hunbian *)mylabel{
//    _mylabel.text=mylabel.text;
//    _mylabel=mylabel;
//}
//-(void)setImageV:(UIImageView *)imageV{
//    _imageV = imageV;
//}

-(void)setModel:(User *)model{
    
    _model = model;
    [_imageV sd_setImageWithURL:[NSURL URLWithString:model.avatarLarge]];
    
    
    __block UIImage *image;
    NSString *str = [[model.avatarLarge componentsSeparatedByString:@"/"]lastObject];
    NSLog(@"++++++%@",str);
    __block NSString *cachPath = [NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES)lastObject];
    NSLog(@"%@",cachPath);
    NSData *data = [NSData dataWithContentsOfFile:[cachPath stringByAppendingPathComponent:str]];
    if (!data) {
        dispatch_async(dispatch_get_global_queue(2, 0), ^{
            NSData *data = [NSData dataWithContentsOfURL:[NSURL URLWithString:model.avatarLarge]];
//            NSString *cachPath = [NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES)lastObject];
            [[NSFileManager defaultManager]createFileAtPath:[cachPath stringByAppendingPathComponent:str] contents:data attributes:nil];
            image = [UIImage imageWithData:data];
            dispatch_async(dispatch_get_main_queue(), ^{
                [_mylabel addLabelScriptColor:[UIColor redColor] ScriptSize:20 Text:model.name Direction:0 ImageData:image];
            });
        });
    }else{
        image = [UIImage imageWithData:data];
        [_mylabel addLabelScriptColor:[UIColor redColor] ScriptSize:20 Text:model.name Direction:0 ImageData:image];
    }
}
@end
