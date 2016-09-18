//
//  STDemosTableViewController.m
//  ST_Demos
//
//  Created by liangshangjia on 16/4/8.
//  Copyright © 2016年 ST. All rights reserved.
//

#import "STDemosTableViewController.h"

#import "STDemo.h"

@interface STDemosTableViewController ()
@property (nonatomic, strong) UITableView *tableView;
@end

@implementation STDemosTableViewController
{
    NSArray *_demos; //Demo数组
}
@dynamic tableView;

//cell重用识别码
static NSString *_tableCellIdentifer = @"STDemosMainTableCellIdentifier";

- (void)viewDidLoad
{
    [super viewDidLoad];

    //设置控制器标题（此处用hook来改变navigationBar的backItem）
    self.title = @"STDemoList";

    //cell高度
    self.tableView.rowHeight = 50;

    //加载数据源
    _demos = [STDemo demos];
}



#pragma mark - Delegate && Datasource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    //cell的个数
    return _demos.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:_tableCellIdentifer];
    cell = ({
        cell ? cell : ([[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:_tableCellIdentifer]);
    });
    //配置cell的显示样式
    [self configureCell:cell withModel:[self modelAtIndexPath:indexPath]];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    //用storyboardSegueIdentifer进行页面跳转
    [self performSegueWithIdentifier:[self modelAtIndexPath:indexPath].storyboardSegueID
                              sender:nil];
}

//对应indexPath下的模型
- (STDemo *)modelAtIndexPath:(NSIndexPath *)indexPath
{
    return _demos[indexPath.row];
}

//配置cell样式
- (void)configureCell:(UITableViewCell *)cell withModel:(STDemo *)model
{
    cell.detailTextLabel.text = model.details;
    cell.textLabel.text       = model.name;
}
@end
