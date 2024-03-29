//
//  AppDelegate.m
//  DQYSH
//
//  Created by demon on 15/10/9.
//  Copyright (c) 2015年 XT. All rights reserved.
//

#import "AppDelegate.h"
#import "LeftSortViewController.h"
#import "YSHViewController.h"
#import "XXYDViewController.h"
#import "YPYXViewController.h"
#import "YYViewController.h"
#import "MainViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    [[UINavigationBar appearance] setBarTintColor:[UIColor redColor]];
    [[UINavigationBar appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor whiteColor]}];
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor redColor]} forState:UIControlStateSelected];
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];   //设置通用背景颜色
    [self.window makeKeyAndVisible];
    
    YSHViewController *yshvc = [[YSHViewController alloc]init];
    UINavigationController *naviYSH = [[UINavigationController alloc]initWithRootViewController:yshvc];
    XXYDViewController *xxvc = [[XXYDViewController alloc]init];
    UINavigationController *naviXX = [[UINavigationController alloc]initWithRootViewController:xxvc];
    YPYXViewController *ypyxvc = [[YPYXViewController alloc]init];
    UINavigationController *naviYXYP = [[UINavigationController alloc]initWithRootViewController:ypyxvc];
    YYViewController *yyvc = [[YYViewController alloc]init];
    UINavigationController *naviYY = [[UINavigationController alloc]initWithRootViewController:yyvc];
    self.mainTabBarController = [[UITabBarController alloc]init];
    self.mainTabBarController.viewControllers = @[naviYSH,naviXX,naviYXYP,naviYY];
    
    LeftSortViewController *leftVC = [[LeftSortViewController alloc] init];
    self.LeftSlideVC = [[LeftSlideViewController alloc] initWithLeftView:leftVC andMainView:self.mainTabBarController];
    self.window.rootViewController = self.LeftSlideVC;
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
