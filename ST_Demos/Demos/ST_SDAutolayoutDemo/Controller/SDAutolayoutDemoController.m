//
//  ViewController.m
//  MySDAutolayoutDemo
//
//  Created by liangshangjia on 16/4/1.
//  Copyright © 2016年 Sami-Network. All rights reserved.
//

#import "SDAutolayoutDemoController.h"

#import "SDAutoLayout/UITableView+SDAutoTableViewCellHeight.h"

#import "STDemoDoctorTableCell.h"
#import "STDemoDoctor.h"
@interface SDAutolayoutDemoController ()
{
    NSArray *_doctors;
}

@end

@implementation SDAutolayoutDemoController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //configure
    [self.tableView registerClass:[STDemoDoctorTableCell class]
           forCellReuseIdentifier:[STDemoDoctorTableCell cellIdentifier]];
    
    _doctors = [STDemoDoctor fakeDatas];
    
}


- (id)objectAtIndexPath:(NSIndexPath *)indexPath
{
    return _doctors[indexPath.row];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _doctors.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    STDemoDoctorTableCell *cell = [tableView dequeueReusableCellWithIdentifier:[STDemoDoctorTableCell cellIdentifier]];
    [cell configureCellWithObject:[self objectAtIndexPath:indexPath]];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    // 获取cell高度
    return [self cellHeightForIndexPath:indexPath
                   cellContentViewWidth:[UIScreen mainScreen].bounds.size.width
                              tableView:tableView];
}

@end
