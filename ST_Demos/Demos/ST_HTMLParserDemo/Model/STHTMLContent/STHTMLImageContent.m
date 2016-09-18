//
//  STHTMLImageContent.m
//  DTCoreTextDemo
//
//  Created by 梁尚嘉 on 16/4/11.
//  Copyright © 2016年 ST. All rights reserved.
//

#import "STHTMLImageContent.h"

@implementation STHTMLImageContent
+ (instancetype)imageContentWithAttributes:(NSDictionary *)attributes
{
    STHTMLImageContent *content = [STHTMLImageContent new];
    content.attributes  = attributes;
    content.type        = STHTMLContentImageType;
    content.width       = [attributes[@"width"] floatValue];
    content.height      = [attributes[@"height"] floatValue];
    content.content     = attributes[@"src"];
    content.aspectRatio = content.height/content.width;

    return content;
}
@end
