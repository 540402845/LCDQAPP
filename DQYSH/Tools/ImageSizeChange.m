//
//  ImageSizeChange.m
//  DQYSH
//
//  Created by demon on 15/10/9.
//  Copyright (c) 2015年 XT. All rights reserved.
//

#import "ImageSizeChange.h"

@implementation ImageSizeChange
+(UIImage *)image:(UIImage *)image byScaligToSize:(CGSize)targetSize
{
    UIImage *sourceImage = image;
    UIImage *newImage = nil;
    
    UIGraphicsBeginImageContext(targetSize);
    CGRect thumbnailRect = CGRectZero;
    thumbnailRect.origin = CGPointZero;
    thumbnailRect.size.width = targetSize.width;
    thumbnailRect.size.height = targetSize.height;
    
    [sourceImage drawInRect:thumbnailRect];
    
    newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return newImage;
}
@end
