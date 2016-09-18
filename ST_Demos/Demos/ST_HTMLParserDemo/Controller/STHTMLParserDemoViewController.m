//
//  ViewController.m
//  DTCoreTextDemo
//
//  Created by liangshangjia on 16/4/11.
//  Copyright © 2016年 ST. All rights reserved.
//

#import "STHTMLParserDemoViewController.h"

#import "STHTMLParser.h"

#import "STHTMLContent.h"
#import "STHTMLContentCell.h"

#import "UIImage+Initial.h"

#import "STGraduallyNavigationBarTool.h"


@interface STHTMLParserDemoViewController ()
@property (nonatomic, strong) NSArray *contents;
@end

@implementation STHTMLParserDemoViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.tableView.backgroundView = [[UIImageView alloc]initWithImage:[UIImage st_jpgNamed:@"bg_image"]];


    NSString *path = [[NSBundle mainBundle] pathForResource:@"html" ofType:nil];
    NSData *htmlData = [NSData dataWithContentsOfFile:path options:NSDataReadingUncached error:nil];

    __weak __typeof(&*self)ws = self;
    [[STHTMLParser sharedManager]parserWithHtmlData:htmlData onComplection:^(NSArray *contents) {
        ws.contents = contents;
        [ws.tableView reloadData];
    }];

}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [STGraduallyNavigationBarTool setNavigationBar:self.navigationController.navigationBar color:[UIColor blackColor] alpha:.2];
    self.navigationController.navigationBar.translucent = YES;
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    [STGraduallyNavigationBarTool setDefaultNavigationBar:self.navigationController.navigationBar];
}


- (id)objectAtIndexPath:(NSIndexPath *)indexPath
{
    return _contents[indexPath.row];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _contents.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return ({
        STHTMLContent *content = [self objectAtIndexPath:indexPath];
        STHTMLContentCell *cell = [STHTMLContentCell contentCellWithTableView:tableView andType:content.type];
        [cell configureCellWithObject:content];
        cell;
    });
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    // 获取cell高度
    return [[self objectAtIndexPath:indexPath] expectHeight];
}


@end
