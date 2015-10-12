//
//  YSHViewController.m
//  DQYSH
//
//  Created by demon on 15/10/9.
//  Copyright (c) 2015年 XT. All rights reserved.
//

#import "YSHViewController.h"
#import "ImageSizeChange.h"
#import "SelectTownViewController.h"
#import "LCTownModel.h"//测试数据

@interface YSHViewController ()
@property(nonatomic,strong)NSArray *demoTowns;
@end

@implementation YSHViewController
-(NSArray*)demoTowns
{
    if (!_demoTowns) {
        _demoTowns = [LCTownModel DemoDataofTowns];
    }
    return _demoTowns;
}

//加载tabbar图标和文字
-(instancetype)initWithCoder:(NSCoder *)aDecoder
{
    if (self = [super initWithCoder:aDecoder]) {
        self.title = @"党群议事会";
        UIImage *image = [ImageSizeChange image:[UIImage imageNamed:@"党群议事会2.png"] byScaligToSize:CGSizeMake(30, 30)];
        self.tabBarItem.image = image;
        UIImage *selectedimage = [ImageSizeChange image:[UIImage imageNamed:@"党群议事会.png"] byScaligToSize:CGSizeMake(30, 30)];
        self.tabBarItem.selectedImage = [selectedimage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    }
    return self;
}
-(instancetype)init
{
    if (self = [super init]) {
        self.title = @"党群议事会";
        UIImage *image = [ImageSizeChange image:[UIImage imageNamed:@"党群议事会2.png"] byScaligToSize:CGSizeMake(30, 30)];
        self.tabBarItem.image = image;
        UIImage *selectedimage = [ImageSizeChange image:[UIImage imageNamed:@"党群议事会.png"] byScaligToSize:CGSizeMake(30, 30)];
        self.tabBarItem.selectedImage = [selectedimage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self setMap];
    //设置返回标题
    UIBarButtonItem *backbuttonitem = [[UIBarButtonItem alloc]init];
    backbuttonitem.title = @" ";
    self.navigationItem.backBarButtonItem = backbuttonitem;
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    //设置导航栏搜索按钮
    UIBarButtonItem *rightSearchItem = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemSearch target:self action:nil];
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    self.navigationItem.rightBarButtonItem = rightSearchItem;
    //设置导航栏左侧头像
    UIImage *image = [ImageSizeChange image:[UIImage imageNamed:@"guanggao_1.png"] byScaligToSize:CGSizeMake(30, 30)];
    UIImageView *imageView = [[UIImageView alloc]initWithImage:image];
    imageView.layer.cornerRadius = imageView.frame.size.width/2;
    imageView.clipsToBounds = YES;
    UIBarButtonItem *leftImageButton = [[UIBarButtonItem alloc]initWithCustomView:imageView];
    self.navigationItem.leftBarButtonItem = leftImageButton;

}

#pragma mark ------加载地图
-(void)setMap
{
    UIImageView *mapImage = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"map.png"]];
    mapImage.frame = CGRectMake(self.view.bounds.origin.x,64, self.view.frame.size.width, self.view.frame.size.width*720*1.0/800);
    [self.view addSubview:mapImage];
    UIButton *button = [[UIButton alloc]init];
    button.frame = mapImage.frame;
    [button addTarget:self action:@selector(OnSelectTown) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}
#pragma mark ------加载地图底部的列表
-(void)setBottomTable
{
    #warning 这个列表主要是要加载什么东西？？
}
//选择乡镇
-(void)OnSelectTown
{
    SelectTownViewController *selectTownVC = [[SelectTownViewController alloc]init];
    selectTownVC.currentArea = self.demoTowns;
    [self.navigationController pushViewController:selectTownVC animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
