//
//  LSMainViewController.m
//  WB
//
//  Created by 刘山 on 16/5/23.
//  Copyright © 2016年 Sam. All rights reserved.
//

#import "LSMainViewController.h"

#import "LSDiscoverViewController.h"
#import "LSHomeViewController.h"
#import "LSMessageViewController.h"
#import "LSProfileViewController.h"

@interface LSMainViewController ()

@end

@implementation LSMainViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    [self addChildViewControllers];
}

#pragma mark - 设置子控制器
/// 添加所有子控制器
- (void)addChildViewControllers
{

    // 设置 tabBar 的 tintColor
    self.tabBar.tintColor = [UIColor orangeColor];

    // 添加子控制器
    [self addChildViewController:[[LSHomeViewController alloc] init] title:@"首页" imageName:@"tabbar_home"];
    [self addChildViewController:[[LSMessageViewController alloc] init] title:@"消息" imageName:@"tabbar_message_center"];
    [self addChildViewController:[[LSDiscoverViewController alloc] init] title:@"发现" imageName:@"tabbar_discover"];
    [self addChildViewController:[[LSProfileViewController alloc] init] title:@"我" imageName:@"tabbar_profile"];
}

/// 添加子控制器
///
/// @param childController 子控制器
/// @param title           标题
/// @param imageName       图像名称
- (void)addChildViewController:(UIViewController*)childController title:(NSString*)title imageName:(NSString*)imageName
{

    // 设置标题
    childController.title = title;

    // 通过 AttributeText 设置字体属性
    // 设置字体颜色
    // [childController.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor redColor]} forState:UIControlStateHighlighted];
    // 设置字体大小
    // [childController.tabBarItem setTitleTextAttributes:@{NSFontAttributeName: [UIFont systemFontOfSize:20]} forState:UIControlStateNormal];

    // 设置图像
    childController.tabBarItem.image = [UIImage imageNamed:imageName];

    NSString* selectedImageName = [NSString stringWithFormat:@"%@_selected", imageName];
    childController.tabBarItem.selectedImage = [[UIImage imageNamed:selectedImageName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];

    // 添加子控制器
    UINavigationController* nav = [[UINavigationController alloc] initWithRootViewController:childController];

    [self addChildViewController:nav];
}

@end
