//
//  GraduallyTableViewController.m
//  STGraduallyChangeDemo
//
//  Created by liangshangjia on 16/4/8.
//  Copyright © 2016年 ST. All rights reserved.
//

#import "STGraduallyTableViewController.h"
#import "STGraduallyNavigationBarTool.h"

#import "UIColor+Ext.h"
@implementation STGraduallyTableViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    //注册cell
    [self.tableView registerClass:[UITableViewCell class]
           forCellReuseIdentifier:@"GraduallyCell"];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    //主动调用scrollview代理来实现navigationBar的颜色初始化
    [self scrollViewDidScroll:self.tableView];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    //页面离开时，将navigationBar的颜色样式变回APP默认的设置
    [STGraduallyNavigationBarTool setDefaultNavigationBar:self.navigationController.navigationBar];
}



- (NSInteger) tableView:(UITableView *)tableView
  numberOfRowsInSection:(NSInteger)section
{
    return 1000;
}

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath
{

    return ({
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"GraduallyCell"];
        cell.backgroundColor = indexPath.row % 2 ? RGBCOLOR(229, 187, 129) : RGBCOLOR(161, 23, 21);
        cell;
    });
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    //navigationBar随滚动变化
    [STGraduallyNavigationBarTool layoutNavgationBar:self.navigationController.navigationBar
                               forScrollViewOffset:scrollView.contentOffset];
}
@end
