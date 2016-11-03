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
@property(strong,nonatomic)NSMutableArray*MyColor;
@property(strong,nonatomic)UILabel *lab11;
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
        
        self.lab11=[[UILabel alloc]init];
        [self.contentView addSubview:_lab11];
    }
    return self;
}
-(void)layoutSubviews{
    [super layoutSubviews];
    self.imageV.frame=CGRectMake(0, 0, self.contentView.bounds.size.width, self.contentView.bounds.size.height*0.7);
    self.imageV.layer.cornerRadius=self.contentView.bounds.size.height*0.2;
    self.imageV.clipsToBounds=YES;
    
    self.mylabel.frame=CGRectMake(0,CGRectGetMaxY(self.imageV.frame), self.contentView.bounds.size.width, self.contentView.bounds.size.height*0.3);
    self.mylabel.numberOfLines=3;
    
    self.lab11.frame=CGRectMake(0, self.imageV.bounds.size.height*0.8,self.imageV.bounds.size.width, self.imageV.bounds.size.height*0.2);
    self.lab11.textAlignment=2;
    self.lab11.textColor=[UIColor groupTableViewBackgroundColor];
    self.lab11.font=[UIFont systemFontOfSize:self.lab11.frame.size.height];
        self.lab11.adjustsFontSizeToFitWidth = YES;
}
-(void)setModel:(User *)model{
    
    _model = model;
    [_imageV sd_setImageWithURL:[NSURL URLWithString:model.avatarLarge]];
    
    __block UIImage *image;
    NSString *str = [[model.avatarLarge componentsSeparatedByString:@"/"]lastObject];
    __block NSString *cachPath = [NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES)lastObject];
    NSData *data = [NSData dataWithContentsOfFile:[cachPath stringByAppendingPathComponent:str]];
    if (!data) {
        dispatch_async(dispatch_get_global_queue(2, 0), ^{
            NSData *data = [NSData dataWithContentsOfURL:[NSURL URLWithString:model.avatarLarge]];
            [[NSFileManager defaultManager]createFileAtPath:[cachPath stringByAppendingPathComponent:str] contents:data attributes:nil];
            image = [UIImage imageWithData:data];
            dispatch_async(dispatch_get_main_queue(), ^{
                NSString *NameID=[NSString stringWithFormat:@"%@：%@",model.name,model.userDescription];
                [_mylabel addLabelScriptColor:[UIColor blackColor] ScriptSize:20 Text:NameID Direction:0 ImageData:image];
            });
        });
    }else{
        image = [UIImage imageWithData:data];
        NSString *NameID=[NSString stringWithFormat:@"%@：%@",model.name,model.userDescription];
        [_mylabel addLabelScriptColor:[UIColor blackColor] ScriptSize:20 Text:NameID Direction:0 ImageData:image];
    }
    
    _lab11.text=[NSString stringWithFormat:@"%@@Sina.com",model.name];
}
-(NSMutableArray *)MyColor{
    if (!_MyColor) {
        _MyColor=[[NSMutableArray alloc]init];
        for (int i=0; i<100; i++) {
            [_MyColor addObject:[UIColor colorWithRed:arc4random_uniform(256)/256.0 green:arc4random_uniform(256)/256.0 blue:arc4random_uniform(256)/256.0 alpha:1.0]];
        }
    }
    return _MyColor;
}
@end
