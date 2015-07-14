//
//  ViewController.m
//  BezierDemo
//
//  Created by ak on 15/7/14.
//  Copyright (c) 2015年 AK. All rights reserved.
//

#import "ViewController.h"
#import "DemoView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    DemoView *demov= [DemoView DemoView];
    demov.isCapStyle=NO;
    demov.frame=CGRectMake(100, 100, 100, 100);
    [self.view addSubview:demov];

    
    
    
}


@end
