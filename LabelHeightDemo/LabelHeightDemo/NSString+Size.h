//
//  NSString+Size.h
//  KSForeignTrade
//
//  Created by 范云飞 on 2019/10/12.
//  Copyright © 2019 kingstar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (Size)

/// 计算(指定/不限)行数文字高度,可以处理计算带行间距、字间距
/// @param size text size
/// @param font text font
/// @param lineSpace 行间距
/// @param wordSpace 字间距
/// @param numberOfLines 行数
- (CGFloat)boundingRectWithSize:(CGSize)size
                           font:(UIFont*)font
                      lineSpace:(CGFloat)lineSpace
                      wordSpace:(CGFloat)wordSpace
                  numberOfLines:(NSInteger)numberOfLines;

@end

NS_ASSUME_NONNULL_END
