//
//  UIBarButtonItem+YFExtention.h
//  百思不得姐
//
//  Created by 张艺峰 on 16/3/29.
//  Copyright © 2016年 张艺峰. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (YFExtention)
+ (instancetype)barButtonItemWithImage:(NSString *)imageName selImage:(NSString *)selImageName target:(id)target sel:(SEL)selector;
@end
