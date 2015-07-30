//
//  TCRateView.h
//  RateView
//
//  Created by Che Yuxin on 15/7/30.
//  Copyright (c) 2015年 Che Yuxin. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum : NSUInteger {
    TCRateViewRateRecommend = 5,
    TCRateViewRateLike = 4,
    TCRateViewRateOk = 3,
    TCRateViewRateNormal = 2,
    TCRateViewRateBad = 1
} TCRateViewRate;

@class TCRateView;
@protocol TCRateViewDelegate <NSObject>

@required
- (void)rateView:(TCRateView *)rateView rate:(NSInteger)rate;
@end

@interface TCRateView : UIView
@property (nonatomic, weak)id<TCRateViewDelegate> delegate;

+ (instancetype)showRateView;
@end
