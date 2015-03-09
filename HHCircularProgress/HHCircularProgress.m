//
//  HHCircularProgress.m
//  HHCircularProgress
//
//  Created by 胡晓桥 on 15/3/9.
//  Copyright (c) 2015年 Qian100. All rights reserved.
//

#import "HHCircularProgress.h"

@interface HHCircularProgress()

@property (nonatomic, strong) CAShapeLayer *shapeLayer;
@property (nonatomic, strong) UIBezierPath *bezierPath;
@end

@implementation HHCircularProgress


- (void)awakeFromNib{
    [self setup];
}


- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setup];
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (void)setup{
    //创建CAShapeLayer
    _shapeLayer = [CAShapeLayer layer];
    _shapeLayer.bounds = self.bounds;
    _shapeLayer.position = self.center;
    
    //创建UIBezierPath
    _bezierPath = [UIBezierPath bezierPathWithArcCenter:self.center radius:self.bounds.size.width startAngle:- M_PI_2 endAngle:M_PI_2*3 clockwise:YES];
    
    //贝塞尔曲线和CAShapeLayer产生关联
    _shapeLayer.path = _bezierPath.CGPath;
    
    //基本配置
    _shapeLayer.fillColor = [UIColor clearColor].CGColor;
    _shapeLayer.lineWidth = 2.f;
    _shapeLayer.strokeColor = [UIColor orangeColor].CGColor;
    _shapeLayer.strokeEnd = 0.f;
    
    
    
    //添加到当前view
    [self.layer addSublayer:_shapeLayer];
}

@synthesize progress = _progress;
- (void)setProgress:(CGFloat)progress{
        _progress = progress;
    _shapeLayer.strokeStart = 0;
    _shapeLayer.strokeEnd = progress;
}


@synthesize lineColor = _lineColor;
- (void)setLineColor:(UIColor *)lineColor
{
    _lineColor = lineColor;
    _shapeLayer.strokeColor = lineColor.CGColor;
    
}
- (UIColor *)lineColor{
    return _lineColor;
}

@synthesize lineWidth = _lineWidth;
- (void)setLineWidth:(CGFloat)lineWidth
{
    _lineWidth = lineWidth;
    _shapeLayer.lineWidth = lineWidth;
}

- (CGFloat)lineWidth{
    return _lineWidth;
}




@end
