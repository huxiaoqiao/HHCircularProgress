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
{
    HHCircularProgress *progressView;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor colorWithRed:0.8 green:0.8 blue:0.8 alpha:1];
    
<<<<<<< HEAD
    progressView = [[HHCircularProgress alloc] initWithFrame:CGRectMake(50, 50, 100, 100)];
    progressView.lineWidth = 10.f;
    progressView.lineColor = [UIColor lightTextColor];
    progressView.progress = 0.6;
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = progressView.frame;
    
    [button setTitle:@"点击动画" forState:UIControlStateNormal];
    
    [self.view addSubview:button];
    [button addTarget:self action:@selector(progressAnimation) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:progressView];
    
}

- (void)progressAnimation{
    [UIView animateWithDuration:10 animations:^{
        progressView.progress = 1;
    }];
=======
    HHCircularProgress *progressView = [[HHCircularProgress alloc] initWithFrame:CGRectMake(50, 50, 100, 100)];
    progressView.lineWidth = 10.f;
    progressView.lineColor = [UIColor redColor];
    progressView.progress = 0.5;
    
    [self.view addSubview:progressView];
    
>>>>>>> FETCH_HEAD
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
