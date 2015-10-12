//
//  ControlsSet.m
//  DQYSH
//
//  Created by demon on 15/10/10.
//  Copyright (c) 2015年 XT. All rights reserved.
//

#import "ControlsSet.h"

@implementation ControlsSet
+(UIScrollView*)MyScrollViewSet:(UIScrollView*)targetscrollview images:(NSArray*)images frame:(CGRect)myframe
{
    targetscrollview.frame = myframe;
    targetscrollview.contentSize = CGSizeMake(myframe.size.width*images.count, myframe.size.height);
    targetscrollview.bounces = NO;
    targetscrollview.pagingEnabled = YES;
    targetscrollview.showsHorizontalScrollIndicator = NO;
    targetscrollview.showsVerticalScrollIndicator = NO;
    for (int i = 0; i < images.count ; i++) {
        UIImageView *imageView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:images[i]]];
        imageView.frame = CGRectMake(myframe.size.width * i, 0, myframe.size.width, myframe.size.height);
        [targetscrollview addSubview:imageView];
    }

    return targetscrollview;
}
@end
