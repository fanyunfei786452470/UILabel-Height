//
//  NSString+Size.m
//  KSForeignTrade
//
//  Created by 范云飞 on 2019/10/12.
//  Copyright © 2019 kingstar. All rights reserved.
//

#import "NSString+Size.h"

@implementation NSString (Size)

#pragma mark - 计算(指定/不限)行数文字高度,可以处理计算带行间距、字间距

- (CGFloat)boundingRectWithSize:(CGSize)size
                           font:(UIFont*)font
                      lineSpace:(CGFloat)lineSpace
                      wordSpace:(CGFloat)wordSpace
                  numberOfLines:(NSInteger)numberOfLines {

    if (numberOfLines < 0) {
        return 0;
    }
    
    if (numberOfLines == 0) {
        CGSize orginalSize = [self boundingRectWithSize:size
                                                   font:font
                                              lineSpace:lineSpace
                                              wordSpace:wordSpace];
        return ceil(orginalSize.height);
    }

    CGFloat maxHeight = font.lineHeight * numberOfLines + lineSpace * (numberOfLines - 1);

    CGSize orginalSize = [self boundingRectWithSize:size
                                               font:font
                                          lineSpace:lineSpace
                                          wordSpace:wordSpace];

    if (orginalSize.height >= maxHeight) {
        return ceil(maxHeight);
    } else {
        return ceil(orginalSize.height);
    }
}

- (CGSize)boundingRectWithSize:(CGSize)size
                          font:(UIFont*)font
                     lineSpace:(CGFloat)lineSpace
                     wordSpace:(CGFloat)wordSpace {
    
    NSMutableAttributedString *attributeString = [[NSMutableAttributedString alloc] initWithString:self];
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    paragraphStyle.lineSpacing = lineSpace;
    paragraphStyle.hyphenationFactor = 1.0;
    
    [attributeString addAttribute:NSParagraphStyleAttributeName
                            value:paragraphStyle
                            range:NSMakeRange(0, self.length)];
    
    [attributeString addAttribute:NSFontAttributeName
                            value:font
                            range:NSMakeRange(0, self.length)];
    
    NSDictionary * dic = @{NSKernAttributeName:@(wordSpace)};
    [attributeString addAttributes:dic
                             range:NSMakeRange(0, self.length)];;

    NSStringDrawingOptions options = NSStringDrawingUsesLineFragmentOrigin |
                                     NSStringDrawingUsesFontLeading;
    
    CGRect rect = [attributeString boundingRectWithSize:size
                                                options:options
                                                context:nil];
    return rect.size;
}

@end
