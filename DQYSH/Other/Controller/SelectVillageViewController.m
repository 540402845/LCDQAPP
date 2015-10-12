//
//  SelectVillageViewController.m
//  DQYSH
//
//  Created by demon on 15/10/12.
//  Copyright (c) 2015年 XT. All rights reserved.
//

#import "SelectVillageViewController.h"
#import "MeetingViewController.h"

@interface SelectVillageViewController ()<UITableViewDataSource,UITableViewDelegate>
@property(nonatomic,strong) UITableView *myTableView;
@end

@implementation SelectVillageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.myTableView = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStylePlain];
    self.myTableView.delegate = self;
    self.myTableView.dataSource = self;
    [self.view addSubview:self.myTableView];
    
    self.title = self.currentTown.townName;
    //设置导航栏搜索按钮
    UIBarButtonItem *rightSearchItem = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemSearch target:self action:nil];
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    self.navigationItem.rightBarButtonItem = rightSearchItem;
    //设置导航栏返回按钮
    UIBarButtonItem *backbuttonitem = [[UIBarButtonItem alloc]init];
    backbuttonitem.title = @" ";
    self.navigationItem.backBarButtonItem = backbuttonitem;
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.currentTown.villages.count;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    LCVillageModel *village = [[LCVillageModel alloc]init];
    village = self.currentTown.villages[indexPath.row];
    cell.textLabel.text = village.villageName;
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    MeetingViewController *meetingVC = [[MeetingViewController alloc]init];
    [self.navigationController pushViewController:meetingVC animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
