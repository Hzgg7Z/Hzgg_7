//
//  NSObject+LibBlockKit.h
//  环形布局CycleLayout
//
//  Created by XTT on 16/10/21.
//  Copyright © 2016年 Mr_TY. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#define marcoW [UIScreen mainScreen].bounds.size.width
#define marcoH [UIScreen mainScreen].bounds.size.height
#define myAttribute UICollectionViewLayoutAttributes

typedef void(^ColorTypeBlock)(UIView* sender);

extern const ColorTypeBlock CorneradiusFy_V2;
extern const ColorTypeBlock giveMeTheMoney;
