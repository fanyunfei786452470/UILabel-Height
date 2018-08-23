//
//  ViewController.m
//  UILabel+Height
//
//  Created by 范云飞 on 17/3/16.
//  Copyright © 2017年 范云飞. All rights reserved.
//

#import "ViewController.h"
#import "UILabel+height.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UILabel * label = [[UILabel alloc]init];
    NSString * string = @"我是字间距为如果觉得我的文章对您有用，请随意打赏。您的支持将鼓励我继续创作！";
    if (string.length>40) {
        string = [string substringToIndex:39];
    }
    
//    CGFloat height = [label getHeight:string font:[UIFont systemFontOfSize:20] lineSpace:2.5 wordSpace:@1.5 width:self.view.frame.size.width - 100];
    
    label.numberOfLines = 0;
    label.backgroundColor = [UIColor redColor];
    label.frame = CGRectMake(50, 100, self.view.frame.size.width-100, 30);
    [self.view addSubview:label];
    
    [label setSpace:string font:[UIFont systemFontOfSize:20] lineSpace:2.5 wordSpace:@1.5 width:self.view.frame.size.width - 100];


}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
