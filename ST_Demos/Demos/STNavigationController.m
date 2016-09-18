//
//  STNavigationController.m
//  ST_Demos
//
//  Created by liangshangjia on 16/4/8.
//  Copyright © 2016年 ST. All rights reserved.
//

#import "STNavigationController.h"

@implementation STNavigationController
//状态栏的显隐
-(UIViewController *)childViewControllerForStatusBarHidden
{
    return self.topViewController;
}

//状态栏的样式
- (UIStatusBarStyle)preferredStatusBarStyle {
    return UIStatusBarStyleLightContent;
}

@end
