//
//  YFTabBarController.m
//  百思不得姐
//
//  Created by 张艺峰 on 16/3/29.
//  Copyright © 2016年 张艺峰. All rights reserved.
//

#import "YFTabBarController.h"

@interface YFTabBarController ()

@end

@implementation YFTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // 设置UITabBar的基本属性
    NSMutableDictionary *attr = [NSMutableDictionary dictionary];
    attr[NSForegroundColorAttributeName] = [UIColor grayColor];
    attr[NSFontAttributeName] = [UIFont systemFontOfSize:12];
    
    NSMutableDictionary *selattr = [NSMutableDictionary dictionary];
    selattr[NSForegroundColorAttributeName] = [UIColor darkGrayColor];
    selattr[NSFontAttributeName] = [UIFont systemFontOfSize:12];
    
    UITabBarItem *item = [UITabBarItem appearance];
    [item setTitleTextAttributes:attr forState:UIControlStateNormal];
    [item setTitleTextAttributes:selattr forState:UIControlStateSelected];
    
    // 加入子控制器
    [self setUpChildController:[[UIViewController alloc] init] imageName:@"tabBar_essence_icon" selectImageName:@"tabBar_essence_click_icon" title:@"精华"];
    
    [self setUpChildController:[[UIViewController alloc] init] imageName:@"tabBar_friendTrends_icon" selectImageName:@"tabBar_friendTrends_click_icon" title:@"精华"];
    
    [self setUpChildController:[[UIViewController alloc] init] imageName:@"tabBar_me_icon" selectImageName:@"tabBar_me_click_icon" title:@"精华"];
    
    [self setUpChildController:[[UIViewController alloc] init] imageName:@"tabBar_new_icon" selectImageName:@"tabBar_new_click_icon" title:@"精华"];

}


- (void)setUpChildController:(UIViewController *)class imageName:(NSString *)imageName selectImageName:(NSString *)selectImageName title:(NSString *)title
{
    UIImage *image = [UIImage imageNamed:selectImageName];
    image  = [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    class.tabBarItem.image = [UIImage imageNamed:imageName];
    class.tabBarItem.selectedImage = image;
    class.tabBarItem.title = @"精华";
    class.view.backgroundColor = [UIColor colorWithRed:arc4random_uniform(100)/100.0 green:arc4random_uniform(100)/100.0  blue:arc4random_uniform(100)/100.0  alpha:1.0];
    [self addChildViewController:class];
}

@end
