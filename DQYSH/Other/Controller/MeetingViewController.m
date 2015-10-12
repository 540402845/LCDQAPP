//
//  MeetingViewController.m
//  DQYSH
//
//  Created by demon on 15/10/12.
//  Copyright (c) 2015年 XT. All rights reserved.
//

#import "MeetingViewController.h"
#import "ControlsSet.h"
#import "MeetingNotificationViewController.h"

@interface MeetingViewController ()<UIScrollViewDelegate,UITableViewDataSource,UITableViewDelegate>
@property (nonatomic,strong) UIScrollView *topScrollView;
@property (nonatomic,strong) UIPageControl *scrollViewPageControl;
@property (nonatomic,strong) UITableView *myTableView;
@end

@implementation MeetingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //设置顶部ScrollView
    [self topscrollViewSet];
    //设置底部TableView
    [self bottomTableViewSet];
    self.title = @"党群议事会";
    //加载导航栏右边按钮
    UIBarButtonItem *rightItem = [[UIBarButtonItem alloc]initWithTitle:@"村居信息" style:UIBarButtonItemStyleDone target:self action:nil];
    [rightItem setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor whiteColor]} forState:UIControlStateNormal];
    self.navigationItem.rightBarButtonItem = rightItem;
    //设置导航栏返回按钮
    UIBarButtonItem *backbuttonitem = [[UIBarButtonItem alloc]init];
    backbuttonitem.title = @" ";
    self.navigationItem.backBarButtonItem = backbuttonitem;
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
}

#pragma mark ------ 设置顶端的scrollview
-(void)topscrollViewSet
{
    self.topScrollView = [[UIScrollView alloc]init];
    self.automaticallyAdjustsScrollViewInsets = NO;//保证图片不会滑动到导航栏底部
    self.topScrollView = [ControlsSet MyScrollViewSet:self.topScrollView images:@[@"guanggao_1.png",@"guanggao_2.png",@"guanggao_3.png"] frame:CGRectMake(self.view.bounds.origin.x,64, self.view.frame.size.width, self.view.frame.size.width*320*1.0/720)];
    self.topScrollView.delegate = self;
    [self.view addSubview:self.topScrollView];
    self.scrollViewPageControl = [[UIPageControl alloc]init];
    self.scrollViewPageControl.frame = CGRectMake(0, self.topScrollView.frame.origin.y + self.topScrollView.frame.size.height - 20, self.topScrollView.frame.size.width, 20);
    self.scrollViewPageControl.numberOfPages = 3;//以后改
    self.scrollViewPageControl.currentPage = 0;
    self.scrollViewPageControl.userInteractionEnabled = NO;
    [self.view addSubview:self.scrollViewPageControl];
}
-(void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    self.scrollViewPageControl.currentPage = round(self.topScrollView.contentOffset.x/self.topScrollView.frame.size.width);
}
#pragma mark ------ 设置底部TableView
-(void)bottomTableViewSet
{
    CGRect frameofTableView = CGRectZero;
    frameofTableView.origin.x = 0;
    frameofTableView.origin.y = self.topScrollView.frame.origin.y + self.topScrollView.frame.size.height;
    frameofTableView.size.width = self.topScrollView.frame.size.width;
    frameofTableView.size.height = self.view.bounds.size.height - self.topScrollView.frame.size.height;
    self.myTableView = [[UITableView alloc]initWithFrame:frameofTableView style:UITableViewStyleGrouped];
    self.myTableView.delegate = self;
    self.myTableView.dataSource = self;
    [self.view addSubview:self.myTableView];
}

#pragma mark ------ 加载底部列表
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 2;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 3;
}
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell2"];
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell2"];
    }
    return cell;
}
-(NSString*)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    if (section == 0) {
        return @"会议通知";
    }
    else
    {
        return @"会议历史";
    }
}
-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return 0.1;
}
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 30;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 0) {
        #warning 需要后台数据为下一个界面加载数据
        MeetingNotificationViewController *meetingnotification = [[MeetingNotificationViewController alloc]init];
        [self.navigationController pushViewController:meetingnotification animated:YES];
    }
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
