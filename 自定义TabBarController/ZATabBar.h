//
//  ZATabBar.h
//  自定义TabBarController
//
//  Created by 纵昂 on 2017/3/7.
//  Copyright © 2017年 纵昂. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ZATabBar;

@protocol ZATabBarDelegate <NSObject>

@optional

- (void)tabBar:(ZATabBar *)tabBar didClickButton:(NSInteger)index;
/**
 *  点击加号按钮的时候调用
 */
- (void)tabBarDidClickPlusButton:(ZATabBar *)tabBar;
@end

@interface ZATabBar : UIView
// items:保存每一个按钮对应tabBarItem模型
@property (nonatomic, strong) NSArray * items;

@property (nonatomic, weak) id<ZATabBarDelegate> delegate;

@end
