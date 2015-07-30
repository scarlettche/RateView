//
//  TCRateView.m
//  RateView
//
//  Created by Che Yuxin on 15/7/30.
//  Copyright (c) 2015年 Che Yuxin. All rights reserved.
//

#import "TCRateView.h"
@interface TCRateView ()
@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UIButton *commitBtn;
@property (nonatomic, strong) UIButton *rateBtn1;
@property (nonatomic, strong) UIButton *rateBtn2;
@property (nonatomic, strong) UIButton *rateBtn3;
@property (nonatomic, strong) UIButton *rateBtn4;
@property (nonatomic, strong) UIButton *rateBtn5;
@property (nonatomic, strong) NSArray *buttonsArray;
@property (nonatomic, strong) UILabel *tagLable;

@property (nonatomic, assign) NSInteger rate;
@end

@implementation TCRateView

+ (instancetype)showRateView {
    
    CGRect screenFrame = [UIScreen mainScreen].bounds;
    CGFloat viewW = 275;
    CGFloat viewH = 175;
    CGFloat viewX = (screenFrame.size.width - viewW) * 0.5;
    CGFloat viewY = (screenFrame.size.height - viewH) * 0.5;
    CGRect frame = CGRectMake(viewX, viewY, viewW, viewH);
    return [[self alloc] initWithFrame:frame];
}

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        
        [self setBackgroundColor:[UIColor darkGrayColor]];
        
        self.rate = 1;
        [self setSubViews];
    }
    return self;
}

- (void)setSubViews {
    
    UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 10, 200, 20)];
    titleLabel.text = @"亲，快给课程评个分吧~！";
    [titleLabel setTextColor:[UIColor whiteColor]];
    self.titleLabel = titleLabel;
    
    UIButton *rateBtn1 = [UIButton buttonWithType:UIButtonTypeCustom];
    rateBtn1.frame = CGRectMake(10, CGRectGetMaxY(titleLabel.frame), 36, 36);
#warning 缺少图片
    [rateBtn1 setImage:[UIImage imageNamed:@"course_complete@3x"] forState:UIControlStateNormal];
    [rateBtn1 setImage:[UIImage imageNamed:@"course_complete@3x"] forState:UIControlStateSelected];
    rateBtn1.tag = 1;
    [rateBtn1 addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];
    self.rateBtn1 = rateBtn1;
    
    UIButton *rateBtn2 = [UIButton buttonWithType:UIButtonTypeCustom];
    rateBtn2.frame = CGRectMake(CGRectGetMaxX(rateBtn1.frame), CGRectGetMaxY(titleLabel.frame), 36, 36);
#warning 缺少图片
    [rateBtn2 setImage:[UIImage imageNamed:@"course_no_complete@3x"] forState:UIControlStateNormal];
    [rateBtn2 setImage:[UIImage imageNamed:@"course_complete@3x"] forState:UIControlStateSelected];
    rateBtn2.tag = 2;
    [rateBtn2 addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];
    self.rateBtn2 = rateBtn2;
    
    UIButton *rateBtn3 = [UIButton buttonWithType:UIButtonTypeCustom];
    rateBtn3.frame = CGRectMake(CGRectGetMaxX(rateBtn2.frame), CGRectGetMaxY(titleLabel.frame), 36, 36);
#warning 缺少图片
    [rateBtn3 setImage:[UIImage imageNamed:@"course_no_complete@3x"] forState:UIControlStateNormal];
    [rateBtn3 setImage:[UIImage imageNamed:@"course_complete@3x"] forState:UIControlStateSelected];
    rateBtn3.tag = 3;
    [rateBtn3 addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];
    self.rateBtn3 = rateBtn3;
    
    UIButton *rateBtn4 = [UIButton buttonWithType:UIButtonTypeCustom];
    rateBtn4.frame = CGRectMake(CGRectGetMaxX(rateBtn3.frame), CGRectGetMaxY(titleLabel.frame), 36, 36);
#warning 缺少图片
    [rateBtn4 setImage:[UIImage imageNamed:@"course_no_complete@3x"] forState:UIControlStateNormal];
    [rateBtn4 setImage:[UIImage imageNamed:@"course_complete@3x"] forState:UIControlStateSelected];
    rateBtn4.tag = 4;
    [rateBtn4 addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];
    self.rateBtn4 = rateBtn4;
    
    UIButton *rateBtn5 = [UIButton buttonWithType:UIButtonTypeCustom];
    rateBtn5.frame = CGRectMake(CGRectGetMaxX(rateBtn4.frame), CGRectGetMaxY(titleLabel.frame), 36, 36);
#warning 缺少图片
    [rateBtn5 setImage:[UIImage imageNamed:@"course_no_complete@3x"] forState:UIControlStateNormal];
    [rateBtn5 setImage:[UIImage imageNamed:@"course_complete@3x"] forState:UIControlStateSelected];
    rateBtn5.tag = 5;
    [rateBtn5 addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];
    self.rateBtn5 = rateBtn5;
    
    UIButton *commitBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    commitBtn.frame = CGRectMake(CGRectGetMinX(self.frame), CGRectGetMaxY(rateBtn1.frame), 150, 44);
#warning 缺少图片
    [commitBtn setTitle:@"提交" forState:UIControlStateNormal];
    [commitBtn setImage:[UIImage imageNamed:@""] forState:UIControlStateNormal];
    [commitBtn addTarget:self action:@selector(commitBtnClicked) forControlEvents:UIControlEventTouchUpInside];
    self.commitBtn = commitBtn;
    
    UILabel *tagLabel = [[UILabel alloc] initWithFrame:CGRectMake(CGRectGetMaxX(rateBtn5.frame)+10, CGRectGetMidY(rateBtn5.frame)-rateBtn5.frame.size.height*0.5, 40, 20)];
    [tagLabel setTextColor:[UIColor whiteColor]];
    self.tagLable = tagLabel;
    
    self.buttonsArray = @[rateBtn1,rateBtn2,rateBtn3,rateBtn4,rateBtn5];
    
    [self addSubview:_titleLabel];
    [self addSubview:_commitBtn];
    [self addSubview:_rateBtn1];
    [self addSubview:_rateBtn2];
    [self addSubview:_rateBtn3];
    [self addSubview:_rateBtn4];
    [self addSubview:_rateBtn5];
    [self addSubview:_tagLable];
}

- (void)buttonClicked:(UIButton *)button {
    button.selected = !button.isSelected;
    
    if (button.isSelected == YES) {
        for (int i = 1 ; i < button.tag; i++) {
            UIButton *btn = self.buttonsArray[i];
            btn.selected = YES;
        }
    }else {
        for (int i = 5 ; i > button.tag; i--) {
            UIButton *btn = self.buttonsArray[i-1];
            btn.selected = NO;
        }
    }
    self.rate = button.tag;
    self.tagLable.text = [self getButtonDescription:button];
}

- (void)commitBtnClicked {
    if ([self.delegate respondsToSelector:@selector(rateView:rate:)]) {
        [self.delegate rateView:self rate:self.rate];
    }
}

- (NSString *)getButtonDescription:(UIButton *)button {
    
    if (button.tag == 1) {
        return @"不好";
    }else if (button.tag == 2) {
        return @"一般";
    }else if (button.tag == 3) {
        return @"还行";
    }else if (button.tag == 4) {
        return @"喜欢";
    }else if (button.tag == 5) {
        return @"推荐";
    }else {
        return @"";
    }
    
}

@end
