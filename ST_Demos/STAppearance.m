//
//  STAppearance.m
//  ST_Demos
//
//  Created by liangshangjia on 16/4/8.
//  Copyright © 2016年 ST. All rights reserved.
//

#import "STAppearance.h"
#import <UIKit/UIKit.h>

#import "UIImage+Color.h"

@implementation STAppearance
+ (void)navigationBarAppearance
{
    [[UINavigationBar appearance] setShadowImage:[UIImage new]];
    [[UINavigationBar appearance] setBarStyle:UIBarStyleDefault];
    [[UINavigationBar appearance] setTintColor:STNavigationBarTintColor];
    [[UINavigationBar appearance] setBarTintColor:STNavigationBarTintColor];
    [[UINavigationBar appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:STNavigationBarTintColor}];
    [[UINavigationBar appearance] setBackgroundImage:[UIImage imageWithColor:STNavigationBarDefaultColor]
                                       forBarMetrics:UIBarMetricsDefault];
    
    [[UIApplication sharedApplication] setStatusBarHidden:NO];
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
    
    if ([[UIDevice currentDevice].systemVersion integerValue] >= 8) {
        [UINavigationBar appearance].translucent = NO;
    }
}
@end
