//
//  UILabel+height.h
//  UILabel+Height
//
//  Created by 范云飞 on 17/3/16.
//  Copyright © 2017年 范云飞. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (height)
/**
 *  给UILabel设置行间距和字间距
 *  @param lineSpace 行间距
 *  @param labelText  内容
 *  @param font  字体
 *  @param wordSpace  字间距 --> @10 这样设置  默认的话设置 0 就ok
 */
- (void)setSpace:(NSString*)labelText font:(UIFont*)font lineSpace:(CGFloat)lineSpace wordSpace:(NSNumber *)wordSpace width:(CGFloat)width;

/**
 *  给UILabel设置行间距和字间距
 *  @param lineSpace 行间距
 *  @param labelText  内容
 *  @param font  字体
 *  @param wordSpace  字间距 --> @10 这样设置  默认的话设置 0 就ok
 */
- (CGFloat)getHeight:(NSString*)labelText font:(UIFont*)font lineSpace:(CGFloat)lineSpace wordSpace:(NSNumber *)wordSpace width:(CGFloat)width;
@end
