//
//  STHTMLStringContent.m
//  DTCoreTextDemo
//
//  Created by 梁尚嘉 on 16/4/11.
//  Copyright © 2016年 ST. All rights reserved.
//

#import "STHTMLStringContent.h"

@implementation STHTMLStringContent

+ (instancetype)stringContentWithString:(NSString *)str attributes:(NSDictionary *)attr
{
    STHTMLStringContent *content = [STHTMLStringContent new];
    content.content = str;
    content.attributes = attr;
    content.type = STHTMLContentStringType;
    content.attributedString = [[NSMutableAttributedString alloc]initWithString:str attributes:attr];
    return content;
}
@end
