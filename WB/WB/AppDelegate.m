//
//  AppDelegate.m
//  WB
//
//  Created by 刘山 on 16/5/23.
//  Copyright © 2016年 Sam. All rights reserved.
//

#import "AppDelegate.h"

#import "LSMainViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication*)application didFinishLaunchingWithOptions:(NSDictionary*)launchOptions
{
    // Override point for customization after application launch.
    
    // 设置根视图控制器
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    
    self.window.rootViewController = [[LSMainViewController alloc] init];
    
    [self.window makeKeyAndVisible];
    
    return YES;
}

#pragma mark - 支持设备方向
/// 返回应用程序支持的方向
///
/// @return iPad 支持 4 个方向 / iPhone 仅支持 Home 在下的竖屏


/**
 *  返回应用程序支持的方向
 */
- (UIInterfaceOrientationMask)application:(UIApplication*)application supportedInterfaceOrientationsForWindow:(UIWindow*)window
{
    //iPad 支持 4 个方向 / iPhone 仅支持 Home 在下的竖屏
    if (isPhone) {
        return UIInterfaceOrientationMaskPortrait;
    }
    else {
        return UIInterfaceOrientationMaskAll;
    }
}
@end
