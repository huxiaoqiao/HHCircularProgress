//
//  HHCircularProgress.h
//  HHCircularProgress
//
//  Created by 胡晓桥 on 15/3/9.
//  Copyright (c) 2015年 Qian100. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HHCircularProgress : UIView

@property (nonatomic, assign) CGFloat progress; //进度(0-1.0)

@property (nonatomic, assign) CGFloat lineWidth; //线条宽度

@property (nonatomic, strong) UIColor *lineColor; //线条颜色

@property (nonatomic, assign) CGFloat startAngle;


@property (nonatomic, assign) CGFloat endAngle;


@end
