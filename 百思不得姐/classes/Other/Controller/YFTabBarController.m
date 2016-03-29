//
//  YFTabBarController.m
//  百思不得姐
//
//  Created by 张艺峰 on 16/3/29.
//  Copyright © 2016年 张艺峰. All rights reserved.
//

#import "YFTabBarController.h"
#import "YFEssenceViewController.h"
#import "YFFriendViewController.h"
#import "YFNewViewController.h"
#import "YFMeViewController.h"
#import "YFTabBar.h"
#import "YFNavigationController.h"

@interface YFTabBarController ()

@end

@implementation YFTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // 设置tabbar的颜色
    self.tabBar.backgroundImage = [UIImage imageNamed:@"tabbar-light"];
    
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
    [self setUpChildController:[[YFEssenceViewController alloc] init] imageName:@"tabBar_essence_icon" selectImageName:@"tabBar_essence_click_icon" title:@"精华"];
    
    [self setUpChildController:[[YFNewViewController alloc] init] imageName:@"tabBar_new_icon" selectImageName:@"tabBar_new_click_icon" title:@"新帖"];
    
    [self setUpChildController:[[YFFriendViewController alloc] init] imageName:@"tabBar_friendTrends_icon" selectImageName:@"tabBar_friendTrends_click_icon" title:@"关注"];
    
    [self setUpChildController:[[YFMeViewController alloc] init] imageName:@"tabBar_me_icon" selectImageName:@"tabBar_me_click_icon" title:@"我"];
    
    [self setValue:[[YFTabBar alloc] init] forKeyPath:@"tabBar"];
}


- (void)setUpChildController:(UIViewController *)class imageName:(NSString *)imageName selectImageName:(NSString *)selectImageName title:(NSString *)title
{
    UIImage *image = [UIImage imageNamed:selectImageName];
    image  = [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    class.tabBarItem.image = [UIImage imageNamed:imageName];
    class.tabBarItem.selectedImage = image;
    class.tabBarItem.title = title;
    
    YFNavigationController *nav = [[YFNavigationController alloc] initWithRootViewController:class];
    [self addChildViewController:nav];
}

@end
