//
//  STParallaxTableViewController.m
//  ST_Demos
//
//  Created by 梁尚嘉 on 16/4/8.
//  Copyright © 2016年 ST. All rights reserved.
//

#import "STParallaxTableViewController.h"
#import "STParallaxHeader.h"

#import "STGraduallyNavigationBarTool+ParallaxBLogic.h"

#import "UIImage+Initial.h"
@interface STParallaxTableViewController ()
@property (nonatomic, strong) STParallaxHeader *header;
@end

@implementation STParallaxTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    //视差偏移可放大TableHeader的初始化(STParallaxHeader)
    _header = [STParallaxHeader parallaxHeaderViewWithCGSize:CGSizeMake(self.view.bounds.size.width,
                                                                        self.view.bounds.size.width)];
    _header.imageView.image = [UIImage st_jpgNamed:@"gravatar0"];
    self.tableView.tableHeaderView = _header;

    //注册UITableViewCell
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"reuseIdentifier"];
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


#pragma mark - Table view data source
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 200;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"reuseIdentifier" forIndexPath:indexPath];
    cell.textLabel.text = [@(indexPath.row) stringValue];
    return cell;
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    //tableHeader随滚动变化
    [self.header layoutHeaderViewForScrollViewOffset:scrollView.contentOffset];
    //navigationBar随滚动变化
    [STGraduallyNavigationBarTool parallaxBLogic_layoutNavgationBar:self.navigationController.navigationBar
                                                forScrollViewOffset:scrollView.contentOffset];
}

@end
