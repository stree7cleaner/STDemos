//
//  STHTMLContent.h
//  DTCoreTextDemo
//
//  Created by 梁尚嘉 on 16/4/11.
//  Copyright © 2016年 ST. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    STHTMLContentStringType,    //文字
    STHTMLContentImageType      //图片
}STHTMLContentType;

//********** 这里为了解耦，故有此宏定义,这里使用了它的子类，面向接口编程即可************
#define STHTMLStringContentClass NSClassFromString(@"STHTMLStringSubContent")
#define STHTMLImageContentClass NSClassFromString(@"STHTMLImageSubContent")




@interface STHTMLContent : NSObject

@property (nonatomic, assign) STHTMLContentType type;           //ＨＴＭＬ内容类型
@property (nonatomic, strong) NSString          *content;       //内容
@property (nonatomic, strong) NSDictionary      *attributes;    //html富文本属性

@property (nonatomic, assign) float             expectHeight;   //预测高度


@end
