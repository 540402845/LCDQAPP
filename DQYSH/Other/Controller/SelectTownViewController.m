//
//  SelectTownViewController.m
//  DQYSH
//
//  Created by demon on 15/10/12.
//  Copyright (c) 2015年 XT. All rights reserved.
//

#import "SelectTownViewController.h"
#import "SelectVillageViewController.h"
#import "LCVillageModel.h"

@interface SelectTownViewController ()<UITableViewDataSource,UITableViewDelegate>
@property(nonatomic,strong) UITableView *myTableView;
@end

@implementation SelectTownViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.myTableView = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStylePlain];
    self.myTableView.delegate = self;
    self.myTableView.dataSource = self;
    [self.view addSubview:self.myTableView];
    
//    self.title = self.currentTown.townName;
    self.title = @"涟水县";
    self.view.backgroundColor = [UIColor whiteColor];
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

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.currentArea.count;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"villagecell"];
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"villagecell"];
    }
    LCTownModel *currentModel = [[LCTownModel alloc] init];
    currentModel = self.currentArea[indexPath.row];
    cell.textLabel.text = currentModel.townName;
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    SelectVillageViewController *villageVC = [[SelectVillageViewController alloc]init];
    villageVC.currentTown = self.currentArea[indexPath.row];
    [self.navigationController pushViewController:villageVC animated:YES];
}


@end
