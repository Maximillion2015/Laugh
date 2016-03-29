//
//  YFEssenceViewController.m
//  百思不得姐
//
//  Created by 张艺峰 on 16/3/29.
//  Copyright © 2016年 张艺峰. All rights reserved.
//

#import "YFEssenceViewController.h"
#import "YFViewController1.h"

@interface YFEssenceViewController ()

@end

@implementation YFEssenceViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = YFGlobleColor;
    
    self.navigationItem.titleView  = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"MainTitle"]];
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem barButtonItemWithImage:@"MainTagSubIcon" selImage:@"MainTagSubIconClick" target:self sel:@selector(tagClick)];
}

- (void)tagClick
{
    
    YFLogFunc;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    YFViewController1 *v = [[YFViewController1 alloc] init];
    [self.navigationController pushViewController:v animated:YES];
}

@end
