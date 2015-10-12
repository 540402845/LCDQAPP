//
//  MeetingNotificationViewController.m
//  DQYSH
//
//  Created by demon on 15/10/12.
//  Copyright (c) 2015年 XT. All rights reserved.
//

#import "MeetingNotificationViewController.h"

@interface MeetingNotificationViewController ()

@end

@implementation MeetingNotificationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"会议通知";
    //加载导航栏右边按钮
    UIBarButtonItem *rightItem = [[UIBarButtonItem alloc]initWithTitle:@"编辑" style:UIBarButtonItemStyleDone target:self action:nil];
    [rightItem setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor whiteColor]} forState:UIControlStateNormal];
    self.navigationItem.rightBarButtonItem = rightItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
