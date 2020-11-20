//
//  VisitorView.m
//  weibo
//
//  Created by ShiroJoy on 2020/11/20.
//  Copyright © 2020 yhw. All rights reserved.
//

#import "VisitorView.h"

@interface VisitorView()

@property(nonatomic, strong) UIImageView *iconView;

@end

@implementation VisitorView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setupUI];
    }
    return self;
}

-(void)setupUI{
    
    [self addSubview:self.iconView];
    [self.iconView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.mas_equalTo(self.center);
        make.size.mas_equalTo(CGSizeMake(200, 200));
    }];
    [self makeAnimation];
}

-(void)makeAnimation{
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"transform.rotation"];
    animation.toValue = @(2*M_PI);
    animation.repeatCount = MAXFLOAT;
    animation.duration = 20;
    
    //用在重复动画上，当图层被销毁，动画才会消失
    animation.removedOnCompletion = false;
    
    [self.iconView.layer addAnimation:animation forKey:nil];
}

- (UIImageView *)iconView
{
    if (!_iconView) {
        _iconView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"yuanhuan"]];
        [_iconView sizeToFit];
    }
    return _iconView;
}

@end
