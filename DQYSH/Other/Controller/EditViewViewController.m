//
//  EditViewViewController.m
//  DQYSH
//
//  Created by demon on 15/10/10.
//  Copyright (c) 2015年 XT. All rights reserved.
//

#import "EditViewViewController.h"
#import "LCvillageInfosCellModel.h"
#import "LCvillageInfosTableViewCell.h"

@interface EditViewViewController ()<UITableViewDataSource,UITableViewDelegate>
@property(nonatomic,strong) UITableView *mytableView;
@property(nonatomic,strong) NSArray *villageInfos;
@end

@implementation EditViewViewController

-(NSArray*)villageInfos
{
    if (!_villageInfos) {
        _villageInfos = [LCvillageInfosCellModel DemoData];
    }
    return _villageInfos;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"编辑村信息";
    self.mytableView = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    self.mytableView.delegate = self;
    self.mytableView.dataSource = self;
    [self.view addSubview:self.mytableView];
    
    //[self.navigationItem setHidesBackButton:YES];
    
    UIBarButtonItem *commit = [[UIBarButtonItem alloc]initWithTitle:@"完成" style:UIBarButtonItemStyleDone target:self action:@selector(CommitInfos)];
    [commit setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor whiteColor]} forState:UIControlStateNormal];
    self.navigationItem.rightBarButtonItem = commit;
    
}

-(void)CommitInfos
{
    
}
-(void)GoBack
{
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark ------ 设置tableView
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 3;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.villageInfos.count;
}
-(NSString*)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    if (section == 0) {
        return @"基本信息";
    }
    else if (section == 1) {
        return @"发展信息";
    }
    else
    {
        return @"培养信息";
    }
}
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 30;
}
-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return 0.1;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    LCvillageInfosTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"villageInfoCell"];
    
    if (!cell) {
        cell = [[LCvillageInfosTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"villageInfoCell"];
    }
    
    cell.currentInfo = self.villageInfos[indexPath.row];
    
    return cell;
}

//#pragma mark ------界面将要消失时，返回党群议事会界面
//-(void)viewWillDisappear:(BOOL)animated
//{
//    [self.navigationController popToRootViewControllerAnimated:NO];
//}
@end
