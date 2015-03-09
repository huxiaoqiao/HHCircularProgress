//
//  ViewController.m
//  HHCircularProgress
//
//  Created by 胡晓桥 on 15/3/9.
//  Copyright (c) 2015年 Qian100. All rights reserved.
//

#import "ViewController.h"
#import "HHCircularProgress.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor colorWithRed:0.8 green:0.8 blue:0.8 alpha:1];
    
    HHCircularProgress *progressView = [[HHCircularProgress alloc] initWithFrame:CGRectMake(50, 50, 100, 100)];
    progressView.lineWidth = 10.f;
    progressView.lineColor = [UIColor redColor];
    progressView.progress = 0.5;
    
    [self.view addSubview:progressView];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
