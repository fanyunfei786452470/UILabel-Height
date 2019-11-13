//
//  UnLimitNumberOfLineController.m
//  JsonDemo
//
//  Created by 范云飞 on 2019/10/12.
//  Copyright © 2019 范云飞. All rights reserved.
//

#import "UnLimitNumberOfLineController.h"

#import "UILabel+Height.h"
#import "NSString+Size.h"

#import "Masonry.h"

#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
#define SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height


@interface UnLimitNumberOfLineController ()


@end

@implementation UnLimitNumberOfLineController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UILabel * textLabel = [UILabel new];
    textLabel.numberOfLines = 0;
    textLabel.font = [UIFont systemFontOfSize:18];
    textLabel.textColor = [UIColor blackColor];
    textLabel.backgroundColor = [UIColor redColor];
    [textLabel sizeToFit];
    [self.view addSubview:textLabel];
    
     
    
    CGFloat height = [self.text boundingRectWithSize:CGSizeMake(SCREEN_WIDTH - 100, MAXFLOAT)
                                                font:[UIFont systemFontOfSize:18]
                                           lineSpace:4.0
                                           wordSpace:0.0
                                       numberOfLines:0];

    [textLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.view.mas_centerY);
        make.left.equalTo(self.view.mas_left).offset(50);
        make.right.equalTo(self.view.mas_right).offset(-50);
        make.height.mas_equalTo(height);
    }];

    [textLabel setLabelAttributedText:self.text
                                 font:[UIFont systemFontOfSize:18]
                            lineSpace:4.f
                            wardSpace:0.f];
    
}


- (void)setText:(NSString *)text {
    _text = text;
}

@end
