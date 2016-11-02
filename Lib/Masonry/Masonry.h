//
//  Masonry.h
//  SnapKit
//
//  Created by 丁诚昊 on 15/12/16.
//  Copyright © 2015年 SnapKit Team. All rights reserved.
//

#ifndef Masonry_h
#define Masonry_h
#endif /* Masonry_h */

#define MAS_SHORTHAND_GLOBALS
#define MAS_SHORTHAND

#import <Foundation/Foundation.h>

//! 版本version字符串
FOUNDATION_EXPORT double MasonryVersionNumber;

//! 版本version字符串<时间线:--1.0-----2.0-----------4.0->
FOUNDATION_EXPORT const unsigned char MasonryVersionString[];

#import "MASUtilities.h" /// 0.1 - 组件[宏展开] 适配 iOS Mac_OS_X
#import "View+MASAdditions.h" /// 1.1 - [Mas注入block入口分类] - 这个分类是Masonry核心算法
#import "View+MASShorthandAdditions.h" /// 1.2 - 分类1.1 - Mas属性替换
#import "ViewController+MASAdditions.h" /// 1.3 - 替换苹果官方的UILayoutGuide和NSLayoutAttribute指针族
#import "NSArray+MASAdditions.h" /// 1.1.2 - 迭代View子控件 抽出frame数组并全部数字化[mathematicalization]
#import "NSArray+MASShorthandAdditions.h"/// 1.1.3 函数指针向量映射 UIView:--->NSArray
#import "MASConstraint.h" /// 3.0[Mas约束抽象]  Mas_Geometry[~[偏移/内切/算法/点阵数组缓存]抽象~]
#import "MASCompositeConstraint.h" /// 伟大！伟大的 Budelmann:--->!"~Composite Composite Composite~"!
#import "MASViewAttribute.h" /// Mas属性 主要用于初始化 传参 参数类型：NSLayoutAttribute item [View:>frame]
#import "MASViewConstraint.h" ///3.2  [Mas约束抽象] 继承自MASConstraint算法族
#import "MASConstraintMaker.h" ///3.3 [Mas约束生成器 机关枪算法] 灵感来源:? <APPLE语法糖>算法族
#import "MASLayoutConstraint.h" ///4.0 Mas用于Debug开发时 将一个View对象绑定到他所有的子对象身上 方便定位Mas约束递归更新所需要用到的函数和方法
#import "NSLayoutConstraint+MASDebugAdditions.h" //NSConstraint Category TODO.... may be push something New ? in Mas 3.0 ?