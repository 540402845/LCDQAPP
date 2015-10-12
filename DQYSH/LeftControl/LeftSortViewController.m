//
//  LeftSortViewController.m
//  DQYSH
//
//  Created by demon on 15/10/10.
//  Copyright (c) 2015年 XT. All rights reserved.
//

#import "LeftSortViewController.h"
#import "EditViewViewController.h"
#import "AppDelegate.h"

@interface LeftSortViewController ()<UITableViewDataSource,UITableViewDelegate>
@property(nonatomic,strong) UITableView *menuTableView;
@end

@implementation LeftSortViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor blackColor];
    UITableView *tableview = [[UITableView alloc] init];
    self.menuTableView = tableview;
    tableview.frame = self.view.bounds;
    tableview.dataSource = self;
    tableview.delegate  = self;
    tableview.separatorStyle = UITableViewCellSeparatorStyleNone;
    [self.view addSubview:tableview];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark ------tableView设置
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 6;
}
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *Identifier = @"Identifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:Identifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:Identifier];
    }
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    cell.textLabel.font = [UIFont systemFontOfSize:20.0f];
    cell.backgroundColor = [UIColor clearColor];
    cell.textLabel.textColor = [UIColor whiteColor];
    
    if (indexPath.row == 0) {
        cell.textLabel.text = @"我的通讯录";
        cell.imageView.image = [UIImage imageNamed:@"侧滑栏_03.png"];
    } else if (indexPath.row == 1) {
        cell.textLabel.text = @"村信息";
        cell.imageView.image = [UIImage imageNamed:@"侧滑栏_06.png"];
    } else if (indexPath.row == 2) {
        cell.textLabel.text = @"公示栏";
        cell.imageView.image = [UIImage imageNamed:@"侧滑栏_08.png"];
    } else if (indexPath.row == 3) {
        cell.textLabel.text = @"村官之家";
        cell.imageView.image = [UIImage imageNamed:@"侧滑栏_10.png"];
    } else if (indexPath.row == 4) {
        cell.textLabel.text = @"系统设置";
        cell.imageView.image = [UIImage imageNamed:@"侧滑栏_14.png"];
    } else if (indexPath.row == 5) {
        cell.textLabel.text = @"电话说事";
        cell.imageView.image = [UIImage imageNamed:@"侧滑栏_16.png"];
    }
    return cell;
}
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 180;
}
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.menuTableView.bounds.size.width, 180)];
    view.backgroundColor = [UIColor clearColor];
    return view;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 1) {
        
        [tableView deselectRowAtIndexPath:indexPath animated:YES];
        AppDelegate *tempAppDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
        EditViewViewController *editvillagevc = [[EditViewViewController alloc]init];
        [tempAppDelegate.LeftSlideVC closeLeftView];//关闭左侧抽屉
        [tempAppDelegate.mainTabBarController.viewControllers[0] pushViewController:editvillagevc animated:YES];
    }
}

@end
