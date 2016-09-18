//
//  STHTMLImageSubContent.m
//  DTCoreTextDemo
//
//  Created by 梁尚嘉 on 16/4/11.
//  Copyright © 2016年 ST. All rights reserved.
//

#import "STHTMLImageSubContent.h"
#import "STHTMLContentCellMacro.h"
//#import <UIKit/UIKit.h>

@implementation STHTMLImageSubContent
+ (instancetype)imageContentWithAttributes:(NSDictionary *)attributes
{
    STHTMLImageSubContent *content = [self new];
    content.attributes  = attributes;
    content.type        = STHTMLContentImageType;
    content.width       = [attributes[@"width"] floatValue];
    content.height      = [attributes[@"height"] floatValue];
    content.content     = attributes[@"src"];
    content.aspectRatio = content.height/content.width;

    //创建模型时就计算好高度
    content.expectHeight = ((STHTMLContentWidth * content.aspectRatio) + STHTMLContentCellBottomEdgeMargin + STHTMLContentCellTopEdgeMargin);

    return content;
}

@end
