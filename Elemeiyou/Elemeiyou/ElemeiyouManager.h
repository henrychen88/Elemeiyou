//
//  ElemeiyouManager.h
//  Elemeiyou
//
//  Created by thinkive on 2019/2/25.
//  Copyright © 2019年 thinkive. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface ElemeiyouManager : NSObject

+ (instancetype)sharedInstance;

- (UITabBarController *)baseController;

@end
