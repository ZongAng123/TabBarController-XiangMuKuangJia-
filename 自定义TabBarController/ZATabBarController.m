//
//  ZATabBarController.m
//  自定义TabBarController
//
//  Created by 纵昂 on 2017/3/7.
//  Copyright © 2017年 纵昂. All rights reserved.
//

#import "ZATabBarController.h"
#import "UIImage+ZAImage.h"
#import "MainViewController.h"
#import "ZATabBar.h"

#import "ZAViewControllerOne.h"
#import "ZAViewControllerTwo.h"
#import "ZAViewControllerThree.h"
#import "ZAViewControllerFor.h"
@interface ZATabBarController ()<ZATabBarDelegate>

@property (nonatomic, strong) NSMutableArray * items;

@end

@implementation ZATabBarController

-(NSMutableArray *)items{
    if (_items ==nil) {
        _items =[NSMutableArray array];
    }
    return _items;
}
-(void)viewDidLoad{
    
    [super viewDidLoad];
    
    
    // 添加所有子控制器
    [self setUpAllChildViewController];
    // 自定义tabBar
    [self setUpTabBar];
}

-(void)setUpAllChildViewController{
    // 1
    ZAViewControllerOne * home = [[ZAViewControllerOne alloc] init];
    home.view.backgroundColor = [UIColor whiteColor];
    //    home.tabBarItem.badgeValue = @"2";
    [self setUpOneChildViewController:home image:[UIImage imageNamed:@"loan@2px"] selectedImage:[UIImage imageWithOriginalName:@"loan@2px"] title:@"借贷"];
    
    // 2
    ZAViewControllerTwo * message = [[ZAViewControllerTwo alloc] init];
    message.view.backgroundColor = [UIColor yellowColor];
    message.tabBarItem.badgeValue = @"3";  //设置未读消息小红点
    [self setUpOneChildViewController:message image:[UIImage imageNamed:@"tabbar_message_center"] selectedImage:[UIImage imageWithOriginalName:@"tabbar_message_center_selected"] title:@"好友"];
    
    // 3
    ZAViewControllerThree * discover = [[ZAViewControllerThree alloc] init];
    discover.view.backgroundColor = [UIColor brownColor];
    [self setUpOneChildViewController:discover image:[UIImage imageNamed:@"tabbar_discover"] selectedImage:[UIImage imageWithOriginalName:@"tabbar_discover_selected"] title:@"发现"];
    
    // 4
    ZAViewControllerFor *profile = [[ZAViewControllerFor alloc] init];
    profile.view.backgroundColor = [UIColor orangeColor];
    [self setUpOneChildViewController:profile image:[UIImage imageNamed:@"tabbar_profile"] selectedImage:[UIImage imageWithOriginalName:@"tabbar_profile_selected"] title:@"钱包"];
}
-(void)setUpTabBar{
//   自定义tabBar
    ZATabBar *tabBar = [[ZATabBar alloc] initWithFrame:self.tabBar.frame];
    tabBar.backgroundColor = [UIColor lightGrayColor];
    tabBar.delegate = self;
    tabBar.items = self.items;
    [self.view addSubview:tabBar];
//   移除系统的tabBar
    [self.tabBar removeFromSuperview];
}
//     2. 点击加号按钮的时候调用
- (void)tabBarDidClickPlusButton:(ZATabBar *)tabBar{
    MainViewController * mainView = [[MainViewController alloc] init];
    [self presentViewController:mainView animated:YES completion:nil];
    NSLog(@"模态");
}
// *************************  此处添加所有的子控制器end  ***********************

#pragma mark - 当点击tabBar上的按钮调用
- (void)tabBar:(ZATabBar *)tabBar didClickButton:(NSInteger)index{
    
    if (index == 0 && self.selectedIndex == index) {
        
    }
    self.selectedIndex = index;
}

- (void)setUpOneChildViewController:(UIViewController *)vc image:(UIImage *)image selectedImage:(UIImage *)selectedImage title:(NSString *)title{
    vc.title = title;
    vc.tabBarItem.image = image;
    vc.tabBarItem.selectedImage = selectedImage;
//   保存tabBarItem模型到数组
    [self.items addObject:vc.tabBarItem];
    
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:vc];
//    设置导航栏背景色   黑色透明  黑色不透明
    nav.navigationBar.barStyle  =UIBarStyleBlack;
    nav.navigationBar.translucent= YES;
    nav.navigationBar.tintColor =[UIColor redColor];
    [self addChildViewController:nav];
}
@end
