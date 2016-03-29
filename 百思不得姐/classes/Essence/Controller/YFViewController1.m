//
//  YFViewController1.m
//  百思不得姐
//
//  Created by 张艺峰 on 16/3/29.
//  Copyright © 2016年 张艺峰. All rights reserved.
//

#import "YFViewController1.h"
#import "YFViewController2.h"

@interface YFViewController1 ()

@end

@implementation YFViewController1

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor blueColor];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    YFViewController2 *v = [[YFViewController2 alloc] init];
    [self.navigationController pushViewController:v animated:YES];
}

@end
