//
//  STSquaredLayoutTableViewController.m
//  ST_Demos
//
//  Created by 梁尚嘉 on 16/4/9.
//  Copyright © 2016年 ST. All rights reserved.
//

#import "STSquaredLayoutTableViewController.h"

#import "STSquareTableViewCell+STSquareBeatutyComment.h"

#import "STSquareBeautyComment.h"

#import "FDTemplateLayoutCell/UITableView+FDTemplateLayoutCell.h"

@interface STSquaredLayoutTableViewController ()
{
    NSArray *_comments;
}

@end

@implementation STSquaredLayoutTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    //configure
    [self.tableView registerClass:[STSquareTableViewCell class]
           forCellReuseIdentifier:[STSquareTableViewCell cellIdentifier]];

    _comments = [STSquareBeautyComment fakeDatas];

}


- (id)objectAtIndexPath:(NSIndexPath *)indexPath
{
    return _comments[indexPath.row];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _comments.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    STSquareTableViewCell *cell = [STSquareTableViewCell tableViewCellWithTableView:tableView];
    [cell configureCellWithObject:[self objectAtIndexPath:indexPath]];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    // 获取cell高度
    return [tableView fd_heightForCellWithIdentifier:[STSquareTableViewCell cellIdentifier]
                                    cacheByIndexPath:indexPath
                                       configuration:^(STSquareTableViewCell *cell)
    {
        [cell configureCellWithObject:[self objectAtIndexPath:indexPath]];
    }];
}

@end
