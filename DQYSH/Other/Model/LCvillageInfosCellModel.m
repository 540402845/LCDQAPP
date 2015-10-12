//
//  LCvillageInfosCellModel.m
//  DQYSH
//
//  Created by demon on 15/10/10.
//  Copyright (c) 2015年 XT. All rights reserved.
//

#import "LCvillageInfosCellModel.h"

@implementation LCvillageInfosCellModel
-(instancetype)initWithTitle:(NSString*)title Value:(NSString *)value Unit:(NSString*)Unit
{
    if (self = [super init]) {
        self.title = title;
        self.value = value;
        self.unit = Unit;
    }
    return self;
}
+(LCvillageInfosCellModel*)lcvillageInfosCellModelWithTitle:(NSString*)title Value:(NSString *)value Unit:(NSString*)Unit
{
    return [[LCvillageInfosCellModel alloc]initWithTitle:title Value:value Unit:Unit];
}
+(NSArray*)DemoData
{
    LCvillageInfosCellModel *model1 = [LCvillageInfosCellModel lcvillageInfosCellModelWithTitle:@"户数：" Value:@"65" Unit:@"户"];
    LCvillageInfosCellModel *model2 = [LCvillageInfosCellModel lcvillageInfosCellModelWithTitle:@"人口数：" Value:@"280" Unit:@"人"];
    return @[model1,model2];
}
@end
