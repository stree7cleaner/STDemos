//
//  STDemo.m
//  ST_Demos
//
//  Created by liangshangjia on 16/4/8.
//  Copyright © 2016年 ST. All rights reserved.
//

#import "STDemo.h"
#import "MJExtension.h"

@implementation STDemo
+ (NSArray *)demos
{
    return

    [self mj_objectArrayWithKeyValuesArray:@[
                                             @{
                                                 @"name":@"SDAutolayoutDemo",
                                                 @"details":@"用SDAutolayout布局cell，自动计算Cell高度",
                                                 @"storyboardSegueID":@"SDAutolayoutDemoController_pushAction"
                                                 },
                                             @{
                                                 @"name":@"GraduallyChangeDemo",
                                                 @"details":@"根据scrollview偏移量改变navigationBar颜色",
                                                 @"storyboardSegueID":@"GraduallyChangeDemo_pushAction"
                                                 },
                                             @{
                                                 @"name":@"ParallaxTableHeaderDemo",
                                                 @"details":@"下拉放大,有位移偏差的tableHeader",
                                                 @"storyboardSegueID":@"ParallaxTableHeader_pushAction"
                                                 },
                                             @{
                                                 @"name":@"STSquaredLayoutDemo",
                                                 @"details":@"自定义类似九宫格布局视图",
                                                 @"storyboardSegueID":@"STSquaredLayoutDemo_pushAction"
                                                 },
                                             @{
                                                 @"name":@"STHTMLParserDemo",
                                                 @"details":@"封装DTHtmlParser,类HTML原生页面展示(html-like native)",
                                                 @"storyboardSegueID":@"STHTMLParser_pushAction"
                                                 }

                                             ]];
}
@end
