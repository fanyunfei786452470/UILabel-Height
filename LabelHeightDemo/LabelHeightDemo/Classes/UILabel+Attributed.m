//
//  UILabel+Attributed.m
//  KSForeignTrade
//
//  Created by 范云飞 on 2019/10/12.
//  Copyright © 2019 kingstar. All rights reserved.
//

#import "UILabel+Attributed.h"

@implementation UILabel (Height)

- (void)setLabelAttributedText:(NSString *)text
                          font:(UIFont *)font
                     lineSpace:(CGFloat)lineSpace
                     wardSpace:(CGFloat)wordSpace {
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc]init];
    paragraphStyle.lineBreakMode = NSLineBreakByCharWrapping;
    paragraphStyle.lineSpacing = lineSpace;
    NSDictionary *attributes = @{ NSFontAttributeName:font,
                                  NSParagraphStyleAttributeName:paragraphStyle,
                                  NSKernAttributeName:@(wordSpace)};
    self.attributedText = [[NSAttributedString alloc]initWithString:text attributes:attributes];
}

@end
