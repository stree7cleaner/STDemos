//
//  STHTMLImageContent.h
//  DTCoreTextDemo
//
//  Created by 梁尚嘉 on 16/4/11.
//  Copyright © 2016年 ST. All rights reserved.
//

#import "STHTMLContent.h"

/**
 *  HTML解析内容之图片
 */


@interface STHTMLImageContent : STHTMLContent

@property (nonatomic, assign) float width;          //图片宽度

@property (nonatomic, assign) float height;         //图片高度

@property (nonatomic, assign) float aspectRatio;    //图片高宽比

/**
 *  构造器
 */
+ (instancetype)imageContentWithAttributes:(NSDictionary *)attributes;

@end
