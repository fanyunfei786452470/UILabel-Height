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
 *  @param space 间距
 *  @param text  内容
 *  @param font  字体
 *  @param zspace  字间距 --> @10 这样设置  默认的话设置 0 就ok
 */
-(void)setLineSpace:(CGFloat)space withLabelText:(NSString*)text withFont:(UIFont*)font withZspace:(NSNumber *)zspace Width:(CGFloat)width;
/**
 *  计算UILabel的高度(带有行间距的情况)
 *  @param text  内容
 *  @param font  字体
 *  @param width 宽度
 *  @return 高度
 *  @param zpace  字间距 --> @10 这样设置  默认的话设置 0 就ok
 */
-(CGFloat)getSpaceLabelHeight:(NSString*)text withFont:(UIFont*)font withWidth:(CGFloat)width withSpace:(CGFloat)space withZspace:(NSNumber *)zpace;
@end
