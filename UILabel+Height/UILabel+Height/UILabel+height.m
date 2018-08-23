//
//  UILabel+height.m
//  UILabel+Height
//
//  Created by 范云飞 on 17/3/16.
//  Copyright © 2017年 范云飞. All rights reserved.
//

#import "UILabel+height.h"

@implementation UILabel (height)
/**
 *  给UILabel设置行间距和字间距
 *  @param lineSpace 行间距
 *  @param labelText  内容
 *  @param font  字体
 *  @param wordSpace  字间距 --> @10 这样设置  默认的话设置 0 就ok
 */
- (void)setSpace:(NSString*)labelText font:(UIFont*)font lineSpace:(CGFloat)lineSpace wordSpace:(NSNumber *)wordSpace width:(CGFloat)width
{
    NSMutableParagraphStyle *paraStyle = [[NSMutableParagraphStyle alloc] init];
    paraStyle.lineBreakMode =NSLineBreakByCharWrapping;
    paraStyle.alignment =NSTextAlignmentLeft;
    //    paraStyle.lineSpacing = space; //设置行间距
    paraStyle.hyphenationFactor = 1.0;
    paraStyle.firstLineHeadIndent =0.0;
    paraStyle.paragraphSpacingBefore =0.0;
    paraStyle.headIndent = 0;
    paraStyle.tailIndent = 0;
    //设置字间距 NSKernAttributeName:@1.5f
    NSDictionary *dic;
    CGFloat height;
    CGFloat oneHeight;
    CGFloat rowHeight;
    if (wordSpace == 0) {
        dic =@{NSFontAttributeName:font,NSParagraphStyleAttributeName:paraStyle,NSKernAttributeName:@1.5f,
               };
    }else {
        //        dic =@{NSFontAttributeName:font,NSParagraphStyleAttributeName:paraStyle,NSKernAttributeName:zspace,
        //               };
        // 计算文本的高度
        oneHeight = [@"这样貌似解决了" boundingRectWithSize:CGSizeMake(width, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin| NSStringDrawingUsesFontLeading attributes:dic context:nil].size.height;
        
        rowHeight = [labelText boundingRectWithSize:CGSizeMake(width, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin| NSStringDrawingUsesFontLeading attributes:dic context:nil].size.height;
        if (rowHeight>oneHeight) {
            height = rowHeight;
            paraStyle.lineSpacing = lineSpace; //设置行间距
            dic =@{NSFontAttributeName:font,NSParagraphStyleAttributeName:paraStyle,NSKernAttributeName:wordSpace,
                   };
        }
        else{
            height = oneHeight;
            paraStyle.lineSpacing = 0; //设置行间距
            dic =@{NSFontAttributeName:font,NSParagraphStyleAttributeName:paraStyle,NSKernAttributeName:wordSpace,NSBaselineOffsetAttributeName:@(0),
                   };
        }
    }
    NSAttributedString *attributeStr = [[NSAttributedString alloc] initWithString:labelText attributes:dic];
    
    self.attributedText = attributeStr;
    
    CGSize size = [labelText boundingRectWithSize:CGSizeMake(width,MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading attributes:dic context:nil].size;
    self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, size.width, size.height);
}


/**
 *  给UILabel设置行间距和字间距
 *  @param lineSpace 行间距
 *  @param labelText  内容
 *  @param font  字体
 *  @param wordSpace  字间距 --> @10 这样设置  默认的话设置 0 就ok
 */
- (CGFloat)getHeight:(NSString*)labelText font:(UIFont*)font lineSpace:(CGFloat)lineSpace wordSpace:(NSNumber *)wordSpace width:(CGFloat)width
{
    NSMutableParagraphStyle *paraStyle = [[NSMutableParagraphStyle alloc] init];
    paraStyle.lineBreakMode =NSLineBreakByCharWrapping;
    paraStyle.alignment =NSTextAlignmentLeft;
    //    paraStyle.lineSpacing = space;
    paraStyle.hyphenationFactor = 1.0;
    paraStyle.firstLineHeadIndent =0.0;
    paraStyle.paragraphSpacingBefore =0.0;
    paraStyle.headIndent = 0;
    paraStyle.tailIndent = 0;
    
    //设置字间距 NSKernAttributeName:@1.5f
    NSDictionary *dic;
    CGFloat height;
    CGFloat oneHeight;
    CGFloat rowHeight;
    if (wordSpace == 0) {
        dic =@{NSFontAttributeName:font,NSParagraphStyleAttributeName:paraStyle,NSKernAttributeName:@1.5f
               };
    }else {
        // 计算文本的高度
        oneHeight = [@"这样貌似解决了" boundingRectWithSize:CGSizeMake(width, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin| NSStringDrawingUsesFontLeading attributes:dic context:nil].size.height;
        rowHeight = [labelText boundingRectWithSize:CGSizeMake(width, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin| NSStringDrawingUsesFontLeading attributes:dic context:nil].size.height;
        if (rowHeight>oneHeight) {
            height = rowHeight;
            paraStyle.lineSpacing = lineSpace; //设置行间距
            dic =@{NSFontAttributeName:font,NSParagraphStyleAttributeName:paraStyle,NSKernAttributeName:wordSpace,
                   };
        }
        else{
            height = oneHeight;
            paraStyle.lineSpacing = 0; //设置行间距
            dic =@{NSFontAttributeName:font,NSParagraphStyleAttributeName:paraStyle,NSKernAttributeName:wordSpace,NSBaselineOffsetAttributeName:@(0),
                   };
        }
    }
    CGSize size = [labelText boundingRectWithSize:CGSizeMake(width,MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading attributes:dic context:nil].size;
    return size.height;
}
@end
