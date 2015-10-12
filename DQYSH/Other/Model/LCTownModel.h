//
//  LCTownModel.h
//  DQYSH
//
//  Created by demon on 15/10/12.
//  Copyright (c) 2015年 XT. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LCTownModel : NSObject
//乡镇名称
@property(nonatomic,strong) NSString * townName;
//乡镇下属村信息
@property(nonatomic,strong) NSArray * villages;
+(NSArray*)DemoDataofTowns;
@end
