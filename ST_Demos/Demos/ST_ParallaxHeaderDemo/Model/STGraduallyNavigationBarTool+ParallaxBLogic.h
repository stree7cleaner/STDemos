//
//  STGraduallyNavigationBarTool+ParallaxBLogic.h
//  ST_Demos
//
//  Created by 梁尚嘉 on 16/4/8.
//  Copyright © 2016年 ST. All rights reserved.
//

#import "STGraduallyNavigationBarTool.h"

/**
 *  navigationBar渐变工具(分类：按Parallax业务逻辑分类)
 */

@interface STGraduallyNavigationBarTool (ParallaxBLogic)


/**
 *  渐变navigationBar的颜色
 *  @param offset scrollview的滚动偏移量
 *  @param aNavigationBar 需要改变的NavigationBar
 */
+ (void)parallaxBLogic_layoutNavgationBar:(UINavigationBar *)aNavigationBar
       forScrollViewOffset:(CGPoint)offset;



@end
