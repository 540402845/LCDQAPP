//
//  SelectVillageViewController.h
//  DQYSH
//
//  Created by demon on 15/10/12.
//  Copyright (c) 2015年 XT. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LCVillageModel.h"
#import "LCTownModel.h"
//选择村
@interface SelectVillageViewController : UIViewController
//当前村信息
@property(nonatomic,strong) LCVillageModel * currentVillage;
@property(nonatomic,strong) LCTownModel *currentTown;

@end
