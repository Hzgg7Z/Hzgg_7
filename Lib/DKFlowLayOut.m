//
//  CycleLayout.m
//  环形布局CycleLayout
//
//  Created by XTT on 16/10/21.
//  Copyright © 2016年 Mr_TY. All rights reserved.
//

#import "DKFlowLayOut.h"
#import "blockKitByDK.h" /// 耦合

@interface DKFlowLayOut() {
    NSUInteger rowNumber;
    NSUInteger lineNumber;
}
@property (assign,nonatomic) NSUInteger allCount;
@property (assign,nonatomic) CGSize     itemSize;

@end

@implementation DKFlowLayOut

#pragma mark - 系统的 生命周期代理方法
- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)newBounds {
    return NO;
}

- (void)prepareLayout {
    [super prepareLayout];
    self.collectionView.backgroundColor = [UIColor whiteColor];
    
    /// 元素尺寸
    self.itemSize = CGSizeMake(84,84);
    /// 通过指针拿到集合视图相关重要属性 代理返回个数 bounds尺寸
    self.allCount = [self.collectionView numberOfItemsInSection:0];
    
    CGSize motherSize = self.collectionView.bounds.size;
    rowNumber = motherSize.width / self.itemSize.width;
    /**
     * 排数 3个
     * 列数 51列
     */
    lineNumber = (self.allCount % rowNumber) == 0 ? self.allCount / rowNumber : self.allCount / rowNumber + 1;
}

#define layoutAttri UICollectionViewLayoutAttributes
- (UICollectionViewLayoutAttributes*) layoutAttributesForItemAtIndexPath:(NSIndexPath *)indexPath{
    layoutAttri* layout = [layoutAttri layoutAttributesForCellWithIndexPath:indexPath];
    
    CGSize motherSize = self.collectionView.bounds.size;
    CGFloat overWidth = motherSize.width - rowNumber * self.itemSize.width;
    CGFloat XOffsetX = overWidth / (rowNumber - 1 );
    long i = indexPath.row;
    layout.frame = CGRectMake( (i % rowNumber ) * (self.itemSize.width + XOffsetX),
                              (i / rowNumber ) * (self.itemSize.height + XOffsetX),
                              self.itemSize.width , self.itemSize.height );
    CGFloat deflection = fabs((i/(float)rowNumber)-((float)lineNumber/2)) / (float)(lineNumber / 2);
    
    ///开始离散化everything
    NSLog(@"%0.2f",deflection);
    layout.alpha = deflection;
    layout.transform = CGAffineTransformMakeRotation(M_PI * deflection);
    
    return layout;
}

// 非常重要
- (NSArray<UICollectionViewLayoutAttributes *> *)layoutAttributesForElementsInRect:(CGRect)rect {
    
    NSMutableArray* array = @[].mutableCopy;
    for (int i = 0 ; i < self.allCount; i++) {
        NSIndexPath* indexPath = [NSIndexPath indexPathForRow:i inSection:0];
        // 实际上indexPath才是夸生命周期 拿关键索引的指针
        layoutAttri* layout = [self layoutAttributesForItemAtIndexPath:indexPath];
        
        [array addObject:layout];
    }
    
    return array;
}

- (CGSize) collectionViewContentSize {

    CGFloat totalHeight = (lineNumber+1) * self.itemSize.height;
    NSLog(@"total ---> %0.5f",totalHeight);
    
    CGSize motherSize = self.collectionView.bounds.size;
    return CGSizeMake(motherSize.width, totalHeight);
}
@end
