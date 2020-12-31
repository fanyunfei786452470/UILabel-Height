//
//  LimitNumberOfLineController.m
//  JsonDemo
//
//  Created by 范云飞 on 2019/10/12.
//  Copyright © 2019 范云飞. All rights reserved.
//

#import "LimitNumberOfLineController.h"

#import "UILabel+Attributed.h"
#import "NSString+Size.h"

#import "Masonry.h"

#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
#define SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height

@interface LimitNumberOfLineController ()

@end

@implementation LimitNumberOfLineController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];

    UILabel * textLabel = [UILabel new];
    textLabel.numberOfLines = 3;
    textLabel.font = [UIFont systemFontOfSize:18];
    textLabel.textColor = [UIColor blackColor];
    textLabel.backgroundColor = [UIColor redColor];
    [textLabel sizeToFit];
    [self.view addSubview:textLabel];
    
    
    CGFloat height = [self.text boundingRectWithSize:CGSizeMake(SCREEN_WIDTH - 100, MAXFLOAT)
                                                font:[UIFont systemFontOfSize:18]
                                           lineSpace:4.0
                                           wordSpace:1.0
                                       numberOfLines:3];
    
    [textLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.view.mas_centerY);
        make.left.equalTo(self.view.mas_left).offset(50);
        make.right.equalTo(self.view.mas_right).offset(-50);
        make.height.mas_equalTo(height);
    }];
    
    
    [textLabel setLabelAttributedText:self.text
                                 font:[UIFont systemFontOfSize:18]
                            lineSpace:4.f
                            wardSpace:1.0];
    
    textLabel.lineBreakMode = NSLineBreakByWordWrapping | NSLineBreakByTruncatingTail;
    
}


- (void)setText:(NSString *)text {
    _text = text;
}


@end
