//
//  LCvillageInfosTableViewCell.m
//  DQYSH
//
//  Created by demon on 15/10/10.
//  Copyright (c) 2015年 XT. All rights reserved.
//

#import "LCvillageInfosTableViewCell.h"

@interface LCvillageInfosTableViewCell()
@property(nonatomic,strong) UILabel *titleLabel;
@property(nonatomic,strong) UITextField *valueText;
@property(nonatomic,strong) UILabel *unitLabel;
@end

@implementation LCvillageInfosTableViewCell

#define CELL_PADDING_TB     10
#define CELL_PADDING_LEFT   10
#define CELL_PADDING_RIGHT  20

-(UILabel*)titleLabel
{
    if (!_titleLabel) {
        _titleLabel = [[UILabel alloc]init];
    }
    return _titleLabel;
}
-(UILabel*)unitLabel
{
    if (!_unitLabel) {
        _unitLabel = [[UILabel alloc]init];
    }
    return _unitLabel;
}

-(UITextField*)valueText
{
    if (!_valueText) {
        _valueText = [[UITextField alloc]init];
    }
    return _valueText;
}

-(void)setCurrentInfo:(LCvillageInfosCellModel *)currentInfo
{
    _currentInfo = currentInfo;
    self.titleLabel.textColor = [UIColor lightGrayColor];
    self.titleLabel.text = self.currentInfo.title;
    self.valueText.text = self.currentInfo.value;
    self.unitLabel.text = self.currentInfo.unit;
    CGRect firstRect =[self.titleLabel textRectForBounds:CGRectMake(0, 0, 200, 999) limitedToNumberOfLines:1];
    
    CGRect frameoftitle = CGRectZero;
    frameoftitle.origin = CGPointMake(CELL_PADDING_LEFT, CELL_PADDING_TB);
    frameoftitle.size = firstRect.size;
    self.titleLabel.frame = frameoftitle;
    
    CGRect frameofunit = CGRectZero;
    frameofunit.origin.y = CELL_PADDING_TB;
    frameofunit.origin.x = self.bounds.size.width - CELL_PADDING_RIGHT - 10;
    frameofunit.size = firstRect.size;
    frameofunit.size.width = 20;
    self.unitLabel.frame = frameofunit;
    
    CGRect frameofvalue = CGRectZero;
    frameofvalue.origin.y = CELL_PADDING_TB;
    frameofvalue.origin.x = frameoftitle.origin.x + frameoftitle.size.width + 5;
    frameofvalue.size.width = frameofunit.origin.x - frameofvalue.origin.x - 5;
    frameofvalue.size.height = self.bounds.size.height - CELL_PADDING_TB*2;
    self.valueText.frame = frameofvalue;
    
    [self.contentView addSubview:self.titleLabel];
    [self.contentView addSubview:self.valueText];
    [self.contentView addSubview:self.unitLabel];
}


//- (void)awakeFromNib {
//    // Initialization code
//}
//
//- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
//    [super setSelected:selected animated:animated];
//
//    // Configure the view for the selected state
//}

@end
