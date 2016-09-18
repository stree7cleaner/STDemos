//
//  STDemoUpdateLogViewController.m
//  ST_Demos
//
//  Created by 梁尚嘉 on 16/4/9.
//  Copyright © 2016年 ST. All rights reserved.
//

#import "STDemoUpdateLogViewController.h"

@interface STDemoUpdateLogViewController ()
@property (weak, nonatomic) IBOutlet UITextView *textView;

@end

@implementation STDemoUpdateLogViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    //获取版本更新说明文案
    NSString *string = [NSString stringWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"UpdateLog" ofType:nil]
                                                 encoding:NSUTF8StringEncoding error:nil];
    //让textView在任何情况下都允许滚动
    self.textView.alwaysBounceVertical = YES;

    //给textView添加更新说明文案
    [self.textView setText:string];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
