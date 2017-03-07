//
//  MainViewController.m
//  自定义TabBarController
//
//  Created by 纵昂 on 2017/3/7.
//  Copyright © 2017年 纵昂. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor cyanColor];
    
    UIButton * btn = [UIButton buttonWithType:UIButtonTypeContactAdd];
    btn.center = CGPointMake(self.view.bounds.size.width / 2, 100);
    [btn addTarget:self action:@selector(btnAction) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn];
}

- (void)btnAction{
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
