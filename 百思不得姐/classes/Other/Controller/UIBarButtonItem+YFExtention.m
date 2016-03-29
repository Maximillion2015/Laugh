//
//  UIBarButtonItem+YFExtention.m
//  百思不得姐
//
//  Created by 张艺峰 on 16/3/29.
//  Copyright © 2016年 张艺峰. All rights reserved.
//

#import "UIBarButtonItem+YFExtention.h"

@implementation UIBarButtonItem (YFExtention)
+ (instancetype)barButtonItemWithImage:(NSString *)imageName selImage:(NSString *)selImageName target:(id)target sel:(SEL)selector
{
    UIButton *btn = [[UIButton alloc] init];
    [btn setImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
    [btn setImage:[UIImage imageNamed:selImageName] forState:UIControlStateHighlighted];
    btn.size = btn.currentImage.size;
    [btn addTarget:target action:selector forControlEvents:UIControlEventTouchUpInside];
    
    return [[self alloc] initWithCustomView:btn];
    
}
@end
