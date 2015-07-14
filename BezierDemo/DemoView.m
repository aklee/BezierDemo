//
//  DemoView.m
//  BezierDemo
//
//  Created by ak on 15/7/14.
//  Copyright (c) 2015年 AK. All rights reserved.
//

#import "DemoView.h"
//角度转弧度
#define   DEGREES_TO_RADIANS(degrees)  ((M_PI * degrees)/ 180)

@implementation DemoView
+(DemoView*)DemoView{
    DemoView*view=(DemoView*)[[[UINib nibWithNibName:@"DemoView" bundle:nil]instantiateWithOwner:nil options:nil  ]firstObject ];
    return view;
}

-(instancetype)initWithFrame:(CGRect)frame{
    if (self=[super initWithFrame:frame]) {
        [self setup];
    }
    return  self;
}

-(id)initWithCoder:(NSCoder *)aDecoder{
    if (self=[super initWithCoder:aDecoder]) {
        [self setup];
    }
    return  self;
}

-(void)setup{
    //    参数初始化
    self.circleColor=[UIColor yellowColor];
    self.value=0.25;
    self.isCapStyle=YES;
    self.lineWidth=10;
    self.bgCircleColor=[UIColor orangeColor];
}

//画圆弧
- (void)drawRect:(CGRect)rect {
    
    
    float degress=M_PI*2*self.value;//M_PI是半圆
    
  

    float center=self.bounds.size.width*0.5f;
    float w=center-self.lineWidth*0.5;
    [self.bgCircleColor set];
    //绘制底部环形
    UIBezierPath* bgPath = [UIBezierPath bezierPathWithArcCenter:
                            CGPointMake(center,center)
                                                          radius:w
                                                      startAngle:0
                                                        endAngle:M_PI*2
                                                       clockwise:YES];
    
    bgPath.lineWidth = self.lineWidth;
    [bgPath stroke];
    
    //绘制百分比例环形
    [self.circleColor set];
    UIBezierPath* aPath = [UIBezierPath bezierPathWithArcCenter:
                           CGPointMake(center,center)
                                                         radius:w
                                                     startAngle:0
                                                       endAngle:degress
                                                      clockwise:YES];
    

    if (self.isCapStyle) {
        aPath.lineCapStyle = kCGLineCapRound; //线条拐角
        aPath.lineJoinStyle = kCGLineCapRound; //终点处理
        
    }
    aPath.lineWidth = self.lineWidth;
    [aPath stroke];
    
    
}


@end
