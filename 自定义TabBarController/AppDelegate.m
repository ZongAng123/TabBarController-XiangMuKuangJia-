//
//  AppDelegate.m
//  自定义TabBarController
//
//  Created by 纵昂 on 2017/3/7.
//  Copyright © 2017年 纵昂. All rights reserved.
//

#import "AppDelegate.h"
#import "ZATabBarController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    self.window =[[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    ZATabBarController * ZATabBar =[[ZATabBarController alloc]init];
    // → 然后去YJTabBarController中设置子控制器
    self.window.rootViewController =ZATabBar;
    [self.window makeKeyAndVisible];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
   
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
   
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
   
}

- (void)applicationWillTerminate:(UIApplication *)application {
   
}

@end
