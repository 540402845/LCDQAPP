//
//  LCTownModel.m
//  DQYSH
//
//  Created by demon on 15/10/12.
//  Copyright (c) 2015年 XT. All rights reserved.
//

#import "LCTownModel.h"
#import "LCVillageModel.h"

@implementation LCTownModel
+(NSArray*)DemoDataofTowns
{
    LCVillageModel *village1 = [[LCVillageModel alloc]init];
    village1.villageName = @"涟水村";
    LCVillageModel *village2 = [[LCVillageModel alloc]init];
    village2.villageName = @"苹果村";
    LCVillageModel *village3 = [[LCVillageModel alloc]init];
    village3.villageName = @"葡萄村";
    
    LCTownModel *town1 = [[LCTownModel alloc]init];
    town1.townName = @"涟水镇";
    town1.villages = @[village1,village2,village3];
    
    LCTownModel *town2 = [[LCTownModel alloc]init];
    town2.townName = @"南集镇";
    town2.villages = @[village1,village2,village3];
    
    LCTownModel *town3 = [[LCTownModel alloc]init];
    town3.townName = @"北集镇";
    town3.villages = @[village1,village2,village3];
    
    return @[town1,town2,town3];
}
@end
