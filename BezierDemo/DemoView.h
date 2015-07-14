//
//  DemoView.h
//  BezierDemo
//
//  Created by ak on 15/7/14.
//  Copyright (c) 2015年 AK. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DemoView : UIView
+(DemoView*)DemoView;
@property (weak, nonatomic) IBOutlet UILabel *percentLb;

@property(nonatomic,copy)UIColor* bgCircleColor;

@property(nonatomic,copy)UIColor* circleColor;

//环形终点是否圆滑处理
@property(nonatomic,assign)bool isCapStyle;

//0～1之间
@property(nonatomic,assign)float value;
//环形宽度
@property(nonatomic,assign)float lineWidth;
@end
