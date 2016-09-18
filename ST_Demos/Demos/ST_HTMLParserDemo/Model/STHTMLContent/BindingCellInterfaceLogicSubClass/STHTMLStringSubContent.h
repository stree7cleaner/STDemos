//
//  STHTMLStringCellContent.h
//  DTCoreTextDemo
//
//  Created by 梁尚嘉 on 16/4/11.
//  Copyright © 2016年 ST. All rights reserved.
//

#import "STHTMLStringContent.h"

@interface STHTMLStringSubContent : STHTMLStringContent

#pragma mark - super_overwrite
/**
 *  构造器
 */
+ (instancetype)stringContentWithString:(NSString *)str attributes:(NSDictionary *)attr;

@end
