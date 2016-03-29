//
//  YFMeViewController.m
//  百思不得姐
//
//  Created by 张艺峰 on 16/3/29.
//  Copyright © 2016年 张艺峰. All rights reserved.
//

#import "YFMeViewController.h"

@interface YFMeViewController ()

@end

@implementation YFMeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = YFGlobleColor;
    
    self.navigationItem.title = @"我的";
    
    UIBarButtonItem *settingItem = [UIBarButtonItem barButtonItemWithImage:@"mine-setting-icon" selImage:@"mine-setting-icon-click" target:self sel:@selector(settingClick)];
    UIBarButtonItem *nightItem = [UIBarButtonItem barButtonItemWithImage:@"mine-sun-icon" selImage:@"mine-sun-icon-click" target:self sel:@selector(nightClick)];
    self.navigationItem.rightBarButtonItems = @[
                                                settingItem, nightItem
                                                ];
}

- (void)settingClick
{
    YFLogFunc;
}

- (void)nightClick
{
    YFLogFunc;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
