//
//  ElemeiyouManager.m
//  Elemeiyou
//
//  Created by thinkive on 2019/2/25.
//  Copyright © 2019年 thinkive. All rights reserved.
//

#import "ElemeiyouManager.h"

#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"
#import "FourthViewController.h"

@implementation ElemeiyouManager

+ (instancetype)sharedInstance
{
    static ElemeiyouManager *instance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[ElemeiyouManager alloc] init];
    });
    return instance;
}

- (instancetype)init
{
    if (self = [super init]) {
        
    }
    return self;
}

- (UITabBarController *)baseController
{
    UINavigationController *naviController1 = [[UINavigationController alloc] initWithRootViewController:[FirstViewController new]];
    UIViewController *controller2 = [SecondViewController new];
    UINavigationController *naviController3 = [[UINavigationController alloc] initWithRootViewController:[ThirdViewController new]];
    UIViewController *controller4 = [FourthViewController new];
    
    UITabBarController *tabbarController = [[UITabBarController alloc] init];
    tabbarController.viewControllers = @[naviController1, controller2, naviController3, controller4];
    
    UITabBarItem *item1 = [[UITabBarItem alloc] initWithTitle:@"外卖" image:nil tag:1];
    UITabBarItem *item2 = [[UITabBarItem alloc] initWithTitle:@"会员卡" image:nil tag:2];
    UITabBarItem *item3 = [[UITabBarItem alloc] initWithTitle:@"订单" image:nil tag:3];
    UITabBarItem *item4 = [[UITabBarItem alloc] initWithTitle:@"我的" image:nil tag:4];
    
    naviController1.tabBarItem = item1;
    controller2.tabBarItem = item2;
    naviController3.tabBarItem = item3;
    controller4.tabBarItem = item4;
    
    return tabbarController;
}

@end
