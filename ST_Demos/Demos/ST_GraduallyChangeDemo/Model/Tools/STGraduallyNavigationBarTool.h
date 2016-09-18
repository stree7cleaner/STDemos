//
//  GraduallyNavigationBarTool.h
//  STGraduallyChangeDemo
//
//  Created by liangshangjia on 16/4/8.
//  Copyright © 2016年 ST. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


/**
 *  navigationBar渐变工具
 */

@interface STGraduallyNavigationBarTool : NSObject

/**
 *  渐变navigationBar的颜色
 *  @param offset scrollview的滚动偏移量
 *  @param aNavigationBar 需要改变的NavigationBar
 */
+ (void)layoutNavgationBar:(UINavigationBar *)aNavigationBar
       forScrollViewOffset:(CGPoint)offset;

/**
 *  重置navigationBar的颜色
 */
+ (void)setDefaultNavigationBar:(UINavigationBar *)aNavigationBar;


/**
 *  设置navigationBar的颜色
 *  @param aColor UIColor
 *  @param theAlpha 透明度 (0.f ~ 1)
 */
+ (void)setNavigationBar:(UINavigationBar *)aNavigationBar
                   color:(UIColor *)aColor
                   alpha:(CGFloat)theAlpha;
@end
