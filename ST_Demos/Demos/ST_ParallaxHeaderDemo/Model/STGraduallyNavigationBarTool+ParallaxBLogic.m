//
//  STGraduallyNavigationBarTool+ParallaxBLogic.m
//  ST_Demos
//
//  Created by 梁尚嘉 on 16/4/8.
//  Copyright © 2016年 ST. All rights reserved.
//

#import "STGraduallyNavigationBarTool+ParallaxBLogic.h"

#import "UIImage+Color.h"
#import "STAppearance.h"

#define kBaseDistance 80.f
#define kFunctionExtend 200.f

@implementation STGraduallyNavigationBarTool (ParallaxBLogic)

+ (void)parallaxBLogic_layoutNavgationBar:(UINavigationBar *)aNavigationBar
                      forScrollViewOffset:(CGPoint)offset
{
    CGFloat verticalDistance = offset.y;
    CGFloat alpha = verticalDistance > kBaseDistance ? (verticalDistance - kBaseDistance)/kFunctionExtend : 0;

    // 设置为半透明
    aNavigationBar.translucent = YES;

    [self setNavigationBar:aNavigationBar
                     color:STNavigationBarDefaultColor
                     alpha:alpha];
}
@end
