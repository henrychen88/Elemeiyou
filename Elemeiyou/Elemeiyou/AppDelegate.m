//
//  AppDelegate.m
//  Elemeiyou
//
//  Created by thinkive on 2019/2/25.
//  Copyright © 2019年 thinkive. All rights reserved.
//

#import "AppDelegate.h"

#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"
#import "FourthViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
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
        
    self.window.rootViewController = tabbarController;
    
    [self.window makeKeyAndVisible];
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end