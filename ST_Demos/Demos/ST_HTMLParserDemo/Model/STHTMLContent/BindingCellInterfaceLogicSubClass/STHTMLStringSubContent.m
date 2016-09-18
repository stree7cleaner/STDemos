//
//  STHTMLStringCellContent.m
//  DTCoreTextDemo
//
//  Created by 梁尚嘉 on 16/4/11.
//  Copyright © 2016年 ST. All rights reserved.
//

#import "STHTMLStringSubContent.h"
#import "STHTMLContentCellMacro.h"
#import "NSString+AttributedString.h"
#import "NSAttributedString+SizeRemind.h"
@implementation STHTMLStringSubContent
+ (instancetype)stringContentWithString:(NSString *)str attributes:(NSDictionary *)attr
{
    STHTMLStringSubContent *content = [self new];
    content.content = str;
    content.attributes = attr;
    content.type = STHTMLContentStringType;

    content.attributedString
    = [str attributedStringWithColor:STHTMLContentCellTextColor
                                font:STHTMLContentCellFont
                           lineSpace:STHTMLContentCellLineSpacing];

    //创建模型时就计算好高度
    content.expectHeight = ([content.attributedString boundSize:CGSizeMake(STHTMLContentWidth, CGFLOAT_MAX)].height  + STHTMLContentCellBottomEdgeMargin + STHTMLContentCellTopEdgeMargin);
    
    return content;
}

@end
