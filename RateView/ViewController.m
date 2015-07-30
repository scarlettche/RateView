//
//  ViewController.m
//  RateView
//
//  Created by Che Yuxin on 15/7/30.
//  Copyright (c) 2015年 Che Yuxin. All rights reserved.
//

#import "ViewController.h"
#import "TCRateView.h"

@interface ViewController () <TCRateViewDelegate>
@property (nonatomic, strong) TCRateView *viewd;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    
    TCRateView *viewd = [TCRateView showRateView];
    viewd.delegate = self;
    viewd.alpha = 0.1;
    [self.view addSubview:viewd];
    self.viewd = viewd;
    [UIView animateWithDuration:0.5 animations:^{
        self.viewd.alpha = 1;
    }];
}

- (void)rateView:(TCRateView *)rateView rate:(NSInteger)rate {
    NSLog(@"=========>%ld",(long)rate);
}

@end
