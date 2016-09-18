//
//  STHTMLStringContent.h
//  DTCoreTextDemo
//
//  Created by 梁尚嘉 on 16/4/11.
//  Copyright © 2016年 ST. All rights reserved.
//

#import "STHTMLContent.h"

/**
 *  HTML解析内容之文字
 */

@interface STHTMLStringContent : STHTMLContent

/** 富文本*/
@property (nonatomic, strong) NSAttributedString *attributedString;


/**
 *  构造器
 */
+ (instancetype)stringContentWithString:(NSString *)str attributes:(NSDictionary *)attr;

@end
