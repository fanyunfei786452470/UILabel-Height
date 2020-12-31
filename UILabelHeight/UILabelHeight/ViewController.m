//
//  ViewController.m
//  UILabelHeight
//
//  Created by 范云飞 on 2019/10/12.
//  Copyright © 2019 范云飞. All rights reserved.
//

#import "ViewController.h"

#import "LimitNumberOfLineController.h"
#import "UnLimitNumberOfLineController.h"

#import "Masonry.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"Label高度计算";
    
    UIButton * limitButton = [UIButton buttonWithType:UIButtonTypeCustom];
    limitButton.backgroundColor = [UIColor blackColor];
    [limitButton setTitle:@"指定行数" forState:UIControlStateNormal];
    [limitButton addTarget:self action:@selector(limitButtonClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:limitButton];
    
    [limitButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view.mas_top).offset(200);
        make.centerX.equalTo(self.view.mas_centerX);
        make.size.mas_equalTo(CGSizeMake(80, 30));
    }];
    
    
    UIButton * unLimitButton = [UIButton buttonWithType:UIButtonTypeCustom];
    unLimitButton.backgroundColor = [UIColor blackColor];
    [unLimitButton setTitle:@"不限行数" forState:UIControlStateNormal];
    [unLimitButton addTarget:self action:@selector(unLimitButtonClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:unLimitButton];
    
    [unLimitButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(limitButton.mas_bottom).offset(100);
        make.centerX.equalTo(self.view.mas_centerX);
        make.size.mas_equalTo(CGSizeMake(80, 30));
    }];
}

- (void)limitButtonClick:(id)sender {
    LimitNumberOfLineController * limitVC = [[LimitNumberOfLineController alloc] init];
    limitVC.text =  @"发神经辣椒粉发生街坊邻居奥斯卡发神经发觉对方垃圾死了快递费金坷垃所肩负的发神经东方丽景奥斯卡飞机发生科技对方垃圾死了,发神经辣椒粉发生街坊邻居奥斯卡发神经发觉对方垃圾死了快递费金坷垃所肩负的发神经东方丽景奥斯卡飞机发生科技对方垃圾死了,发神经辣椒粉发生街坊邻居奥斯卡发神经发觉对方垃圾死了快递费金坷垃所肩负的发神经东方丽景奥斯卡飞机发生科技对方垃圾死了";
    [self.navigationController pushViewController:limitVC animated:YES];
}

- (void)unLimitButtonClick:(id)sender {
    UnLimitNumberOfLineController * unLimitVC = [[UnLimitNumberOfLineController alloc] init];
    unLimitVC.text = @"发神经辣椒粉发生街坊邻居奥斯卡发神经发觉对方垃圾死了快递费金坷垃所肩负的发神经东方丽景奥斯卡飞机发生科技对方垃圾死了发神经辣椒粉发生街坊邻居奥斯卡发神经发觉对方垃圾死了快递费金坷垃所肩负的发神经东方丽景奥斯卡飞机发生科技对方垃圾死了发神经辣椒粉发生街坊邻居奥斯卡发神经发觉对方垃圾死了快递费金坷垃所肩负的发神经东方丽景奥斯卡飞机发生科技对方垃圾死了发神经辣椒粉发生街坊邻居奥斯卡发神经发觉对方垃圾死了快递费金坷垃所肩负的发神经东方丽景奥斯卡飞机发生科技对方垃圾死了";
    [self.navigationController pushViewController:unLimitVC animated:YES];
}


@end
