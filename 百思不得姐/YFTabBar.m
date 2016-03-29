//
//  YFTabBar.m
//  百思不得姐
//
//  Created by 张艺峰 on 16/3/29.
//  Copyright © 2016年 张艺峰. All rights reserved.
//

#import "YFTabBar.h"

@interface YFTabBar()
@property (nonatomic, strong) UIButton *publicBtn;
@end

@implementation YFTabBar

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        UIButton *publicBtn = [[UIButton alloc] init];
        [publicBtn setBackgroundImage:[UIImage imageNamed:@"tabBar_publish_icon"] forState:UIControlStateNormal];
        [publicBtn setBackgroundImage:[UIImage imageNamed:@"tabBar_publish_click_icon"] forState:UIControlStateHighlighted];
        publicBtn.frame = CGRectMake(0, 0, publicBtn.currentBackgroundImage.size.width, publicBtn.currentBackgroundImage.size.height);
        
        self.publicBtn = publicBtn;
        [self addSubview:publicBtn];
    }
    return self;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    // 不能在init里面写，因为那时还没有加载出来，所以不能取self的长宽
    self.publicBtn.center = CGPointMake(self.bounds.size.width * 0.5, self.bounds.size.height * 0.5);
    
    int tabBarButtonW = self.bounds.size.width / 5;
    int tabBarButtonH = self.bounds.size.height;
    
    int index = 0;
    
    for (UIView *view in self.subviews) {
        if (![view isKindOfClass:NSClassFromString(@"UITabBarButton")]) {
            continue;
        }
              
        view.frame = CGRectMake(tabBarButtonW * index, 0, tabBarButtonW, tabBarButtonH);
        if (index == 1) {
            index++;
        }
        index++;
    }
}

@end
