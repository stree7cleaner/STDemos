//
//  STHTMLParser.m
//  DTCoreTextDemo
//
//  Created by 梁尚嘉 on 16/4/11.
//  Copyright © 2016年 ST. All rights reserved.
//

#import "STHTMLParser.h"
#import <DTHTMLParser.h>

#import "STHTMLStringContent.h"
#import "STHTMLImageContent.h"


@interface STHTMLParser () < DTHTMLParserDelegate >

@property (nonatomic, strong) DTHTMLParser      *parser;
@property (nonatomic, strong) NSMutableArray    *htmlContents;
@property (nonatomic, strong) NSDictionary      *tempAttributes;
@property (nonatomic, strong) complectionBlock  complection;

@end

@implementation STHTMLParser
static STHTMLParser *DefaultManager = nil;

+ (instancetype)sharedManager
{
    static STHTMLParser *sharedParserInstance = nil;
    static dispatch_once_t predicate;
    dispatch_once(&predicate, ^{
        sharedParserInstance = [[self alloc] init];
    });
    return sharedParserInstance;
}


- (void)parserWithHtmlData:(NSData *)htmlData onComplection:(void (^)(NSArray *))complection
{
    _parser = [[DTHTMLParser alloc]initWithData:htmlData encoding:NSUTF8StringEncoding];
    _parser.delegate = self;
    _complection = complection;
    BOOL success = [_parser parse];

    //解析出错
    if (!success) {
        [self callback:nil];
    }
}


- (void)parserWithHtmlString:(NSString *)htmlStr onComplection:(void (^)(NSArray *))complection
{
    [self parserWithHtmlData:[htmlStr dataUsingEncoding:NSUTF8StringEncoding] onComplection:complection];
}


#pragma DTHTMLParserDelegate

- (void)parserDidStartDocument:(DTHTMLParser *)parser
{
    _htmlContents = [NSMutableArray array];
}

- (void)parser:(DTHTMLParser *)parser didStartElement:(NSString *)elementName attributes:(NSDictionary *)attributeDict
{
    _tempAttributes = attributeDict;
    if ([elementName isEqualToString:@"img"]) {//图片

        [_htmlContents addObject:[STHTMLImageContentClass imageContentWithAttributes:_tempAttributes]];
    }
}

- (void)parser:(DTHTMLParser *)parser didEndElement:(NSString *)elementName
{
}


- (void)parser:(DTHTMLParser *)parser foundCharacters:(NSString *)string
{
    if (string.length) { //文字
        [_htmlContents addObject:
         [STHTMLStringContentClass stringContentWithString:string
                                           attributes:_tempAttributes]];
    }
}


- (void)parserDidEndDocument:(DTHTMLParser *)parser
{
    [self callback:_htmlContents];
}


#pragma mark - CallBack
- (void)callback:(NSArray *)array
{
    !_complection ?: _complection(array);
    _complection = nil;
}

@end
