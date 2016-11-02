//
//  NSObject+LibBlockKit.m
//  环形布局CycleLayout
//
//  Created by XTT on 16/10/21.
//  Copyright © 2016年 Mr_TY. All rights reserved.
//

#import "BlockKitByDK.h"

/**
 *  写一个随机背景色 block 加上被色边框
 */

const ColorTypeBlock CorneradiusFy_V2 = ^(UIView* sender) {
#define arc4N(N) (arc4random_uniform(N)/(float)N)
    sender.backgroundColor = [UIColor colorWithHue:arc4N(1000)
                                        saturation:1.0
                                        brightness:0.85
                                             alpha:1];
    sender.layer.borderColor = [UIColor blackColor].CGColor;
    
    sender.layer.borderWidth = CGSizeEqualToSize(CGSizeZero, sender.bounds.size) ? 2.5: MIN(sender.bounds.size.height, sender.bounds.size.width) / 20;
    sender.layer.cornerRadius= CGSizeEqualToSize(CGSizeZero, sender.bounds.size) ? 2.5: MIN(sender.bounds.size.height, sender.bounds.size.width) / 20;
};
