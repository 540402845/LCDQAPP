//
//  AppDelegate.h
//  DQYSH
//
//  Created by demon on 15/10/9.
//  Copyright (c) 2015年 XT. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LeftSlideViewController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) LeftSlideViewController *LeftSlideVC;
@property (strong, nonatomic) UITabBarController *mainTabBarController;

@end

