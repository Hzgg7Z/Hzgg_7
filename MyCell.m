//
//  MyCell.m
//  bfdmbsdbdbfgbjdsbgkbdg
//
//  Created by yozoz on 16/11/2.
//  Copyright © 2016年 Hzgg. All rights reserved.
//

#import "MyCell.h"

@interface MyCell ()


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
-(void)setMylabel:(Hunbian *)mylabel{
    _mylabel.text=mylabel.text;
    _mylabel=mylabel;
}
-(void)setImageV:(UIImageView *)imageV{
    _imageV = imageV;
}
@end
