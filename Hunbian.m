

#import "Hunbian.h"

@interface Hunbian ()

@end
@implementation Hunbian

-(void)addLabelScriptColor:(UIColor *)ScriptColor ScriptSize:(CGFloat)Font Text:(NSString *)ScriptStr Direction:(NSInteger)direction ImageData:(NSData *)data {
    NSMutableAttributedString *haha = [[NSMutableAttributedString alloc] initWithString:ScriptStr];
    // 修改富文本中的不同文字的样式
    [haha addAttribute:NSForegroundColorAttributeName value:ScriptColor range:NSMakeRange(0,haha.length)];
    [haha addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:Font/2] range:NSMakeRange(0, haha.length)];
    //————————————————————————————————————————
    UIImage *image = [UIImage imageWithData:data];
    NSTextAttachment *textAttach = [[NSTextAttachment alloc] init];
    textAttach.image = image;
    textAttach.bounds=CGRectMake(0, -6, Font, Font);
    //————————————————————————————————————————
//    NSAttributedString *stringImage = [NSAttributedString attributedStringWithAttachment:attchImage];
//    [attriStr insertAttributedString:stringImage atIndex:2];//图片添加位置。（Index）
    NSAttributedString *strA = [NSAttributedString attributedStringWithAttachment:textAttach];
    [haha insertAttributedString:strA atIndex:0];//添加在最前面
//    [haha appendAttributedString:strA ];//添加在最后面。
    //———————————————————————————————————
    self.attributedText = haha;
    self.textAlignment = direction;//靠齐方向NSTextAlignmentLeft
}


@end
