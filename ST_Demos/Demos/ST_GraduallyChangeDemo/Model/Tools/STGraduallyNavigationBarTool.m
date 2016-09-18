//
//  GraduallyNavigationBarTool.m
//  STGraduallyChangeDemo
//
//  Created by liangshangjia on 16/4/8.
//  Copyright © 2016年 ST. All rights reserved.
//

#import "STGraduallyNavigationBarTool.h"
#import "UIImage+Color.h"

#import "STAppearance.h"

#define kChangeDistance 200.f

@implementation STGraduallyNavigationBarTool

+ (void)layoutNavgationBar:(UINavigationBar *)aNavigationBar
       forScrollViewOffset:(CGPoint)offset
{
    CGFloat verticalDistance = offset.y;
    if (verticalDistance <= 64 && aNavigationBar.alpha == 1) {
        [self setDefaultNavigationBar:aNavigationBar];
    }else {
        CGFloat detal = kChangeDistance - (verticalDistance - 64);
        CGFloat alpha = MIN( detal >= 0 ? detal / kChangeDistance : 0, 1);

        // 设置为半透明
        aNavigationBar.translucent = YES;
        [self setNavigationBar:aNavigationBar
                         color:STNavigationBarDefaultColor
                         alpha:alpha];
    }
}

+ (void)setDefaultNavigationBar:(UINavigationBar *)aNavigationBar
{
    CGFloat alpha = 1;
    [aNavigationBar setAlpha:alpha];
    [aNavigationBar setTranslucent:NO];
    [aNavigationBar setBarStyle:UIBarStyleDefault];
    [self setNavigationBar:aNavigationBar
                     color:STNavigationBarDefaultColor
                     alpha:alpha];
}


+ (void)setNavigationBar:(UINavigationBar *)aNavigationBar
                   color:(UIColor *)aColor
                   alpha:(CGFloat)theAlpha
{
    //加入navigationBar barItem颜色渐反变化
//    UIColor *tintColor = theAlpha == 1 ? STNavigationBarTintColor : [UIColor colorWithRed:theAlpha green:theAlpha blue:theAlpha alpha:1];

//    [aNavigationBar setTintColor:tintColor];
//    [aNavigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName:tintColor}];
    [aNavigationBar setBackgroundImage:[UIImage imageWithColor:[aColor colorWithAlphaComponent:theAlpha]]
                        forBarPosition:UIBarPositionTopAttached
                            barMetrics:UIBarMetricsDefault];
}


@end
