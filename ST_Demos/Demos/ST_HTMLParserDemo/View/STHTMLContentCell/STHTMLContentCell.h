//
//  STHTMLContentCell.h
//  DTCoreTextDemo
//
//  Created by 梁尚嘉 on 16/4/11.
//  Copyright © 2016年 ST. All rights reserved.
//

#import "BaseTableViewCell.h"
#import "STHTMLContent.h"
#import "STHTMLContentCellMacro.h"

@interface STHTMLContentCell : BaseTableViewCell

+ (instancetype)contentCellWithTableView:(UITableView *)table andType:(STHTMLContentType)type;

- (void)configureCellWithObject:(id)anObj;

@end
