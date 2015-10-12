//
//  ImageSizeChange.h
//  DQYSH
//
//  Created by demon on 15/10/9.
//  Copyright (c) 2015年 XT. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface ImageSizeChange : NSObject
+(UIImage *)image:(UIImage *)image byScaligToSize:(CGSize)targetSize;
@end
