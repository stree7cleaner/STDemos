//
//  STHTMLParser.h
//  DTCoreTextDemo
//
//  Created by 梁尚嘉 on 16/4/11.
//  Copyright © 2016年 ST. All rights reserved.
//

#import <Foundation/Foundation.h>


/**
 *  自定义HTMLParser(封装DTHTMLParser)
 */

typedef void (^complectionBlock) (NSArray *contents);


@interface STHTMLParser : NSObject

/**
 *  单件实例
 */
+ (instancetype)sharedManager;


- (void)parserWithHtmlString:(NSString *)htmlStr onComplection:(complectionBlock)complection;

- (void)parserWithHtmlData:(NSData *)htmlData onComplection:(complectionBlock)complection;


@end
