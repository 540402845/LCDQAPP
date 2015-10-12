//
//  LCvillageInfosCellModel.h
//  DQYSH
//
//  Created by demon on 15/10/10.
//  Copyright (c) 2015年 XT. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LCvillageInfosCellModel : NSObject
@property(nonatomic,strong) NSString *title;
@property(nonatomic,strong) NSString *value;
@property(nonatomic,strong) NSString *unit;
-(instancetype)initWithTitle:(NSString*)title Value:(NSString *)value Unit:(NSString*)Unit;
+(LCvillageInfosCellModel*)lcvillageInfosCellModelWithTitle:(NSString*)title Value:(NSString *)value Unit:(NSString*)Unit;
+(NSArray*)DemoData;
@end
