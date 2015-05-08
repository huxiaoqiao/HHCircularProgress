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
    

    progressView = [[HHCircularProgress alloc] initWithFrame:CGRectMake(50, 50, 100, 100)];
    progressView.lineWidth = 10.f;
    progressView.lineColor = [UIColor lightTextColor];
    progressView.progress = 0.1;
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = progressView.frame;
    
    [button setTitle:@"点击动画" forState:UIControlStateNormal];
    
  
    [button addTarget:self action:@selector(progressAnimation) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:progressView];
      [self.view addSubview:button];
    
}

- (void)progressAnimation{

        progressView.progress = 1;
    

   
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
