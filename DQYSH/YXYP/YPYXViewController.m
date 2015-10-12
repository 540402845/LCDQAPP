//
//  YPYXViewController.m
//  DQYSH
//
//  Created by demon on 15/10/9.
//  Copyright (c) 2015年 XT. All rights reserved.
//

#import "YPYXViewController.h"
#import "ImageSizeChange.h"
#import "ControlsSet.h"

@interface YPYXViewController ()<UIScrollViewDelegate>
@property (nonatomic,strong) UIScrollView *topScrollView;
@property (nonatomic,strong) UIPageControl *scrollViewPageControl;
@end

@implementation YPYXViewController

-(instancetype)initWithCoder:(NSCoder *)aDecoder
{
    if (self = [super initWithCoder:aDecoder]) {
        self.title = @"一品一县";
        UIImage *image = [ImageSizeChange image:[UIImage imageNamed:@"一品一县2.png"] byScaligToSize:CGSizeMake(30, 30)];
        self.tabBarItem.image = image;
        UIImage *selectedimage = [ImageSizeChange image:[UIImage imageNamed:@"一品一县.png"] byScaligToSize:CGSizeMake(30, 30)];
        self.tabBarItem.selectedImage = [selectedimage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    }
    return self;
}
-(instancetype)init
{
    if (self = [super init])
    {
        self.title = @"一品一县";
        UIImage *image = [ImageSizeChange image:[UIImage imageNamed:@"一品一县2.png"] byScaligToSize:CGSizeMake(30, 30)];
        self.tabBarItem.image = image;
        UIImage *selectedimage = [ImageSizeChange image:[UIImage imageNamed:@"一品一县.png"] byScaligToSize:CGSizeMake(30, 30)];
        self.tabBarItem.selectedImage = [selectedimage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self topscrollViewSet];
    
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

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
