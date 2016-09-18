//
//  STHTMLStringContentCell.m
//  DTCoreTextDemo
//
//  Created by 梁尚嘉 on 16/4/11.
//  Copyright © 2016年 ST. All rights reserved.
//

#import "STHTMLStringContentCell.h"

#import "STHTMLStringContent.h"

#import "STLabel.h"

#import <Masonry.h>

@implementation STHTMLStringContentCell
{
    STLabel *_stringLabel;
}
- (void)configure
{
    [super configure];

    _stringLabel = [[STLabel alloc]init];
    _stringLabel.numberOfLines = 0;
    [self.contentView addSubview:_stringLabel];
    [_stringLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(@(STHTMLContentCellLeftRightEdgeMargin));
        make.right.equalTo(@(-STHTMLContentCellLeftRightEdgeMargin));
        make.top.equalTo(@(STHTMLContentCellTopEdgeMargin));
        make.bottom.equalTo(@(-STHTMLContentCellBottomEdgeMargin));
    }];
}


- (void)configureCellWithObject:(STHTMLStringContent *)anObj
{
    [super configureCellWithObject:anObj];
    NSAssert([anObj isKindOfClass:[STHTMLStringContentClass class]], @"所传递实体类不正确");

    _stringLabel.attributedText = anObj.attributedString;
}

+ (NSString *)cellIdentifier
{
    return @"STHTMLStringContentCell";
}

@end
