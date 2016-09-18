//
//  STHTMLContentCell.m
//  DTCoreTextDemo
//
//  Created by 梁尚嘉 on 16/4/11.
//  Copyright © 2016年 ST. All rights reserved.
//

#import "STHTMLContentCell.h"
#import "STHTMLImageContentCell.h"
#import "STHTMLStringContentCell.h"
@implementation STHTMLContentCell

+ (instancetype)contentCellWithTableView:(UITableView *)table andType:(STHTMLContentType)type
{
    switch (type) {

        case STHTMLContentStringType:
            return [STHTMLStringContentCell tableViewCellWithTableView:table];

        case STHTMLContentImageType:
            return [STHTMLImageContentCell tableViewCellWithTableView:table];

    }
    return nil;
}



- (void)configureCellWithObject:(id)anObj
{
    //空实现
}


- (void)configure
{
    [super configure];
    self.backgroundColor = RGBACOLOR(255, 245, 247, .5f);
}

@end
