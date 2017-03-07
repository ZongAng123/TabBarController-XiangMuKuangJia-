//
//  ZAViewControllerOne.m
//  自定义TabBarController
//
//  Created by 纵昂 on 2017/3/7.
//  Copyright © 2017年 纵昂. All rights reserved.
//

#import "ZAViewControllerOne.h"

@interface ZAViewControllerOne ()

@end

@implementation ZAViewControllerOne

-(void)viewDidLoad{
    [super viewDidLoad];
    
    UILabel * lab =[[UILabel alloc]initWithFrame:CGRectMake(10, 300, 380, 60)];
//    设置字体居中
    lab.textAlignment= NSTextAlignmentCenter;
    lab.text=@"纵昂 ZongAng ";
    lab.minimumFontSize = 100;
    lab.numberOfLines = 100;
    [self.view addSubview:lab];
}
@end
