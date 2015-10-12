//
//  SelectTownViewController.h
//  DQYSH
//
//  Created by demon on 15/10/12.
//  Copyright (c) 2015年 XT. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LCTownModel.h"
//乡镇
@interface SelectTownViewController : UIViewController
//当前乡镇
@property(nonatomic,strong) LCTownModel * currentTown;
//当前区县
@property(nonatomic,strong) NSArray *currentArea;
@end
