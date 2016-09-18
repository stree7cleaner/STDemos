//
//  STHTMLImageContentCell.m
//  DTCoreTextDemo
//
//  Created by 梁尚嘉 on 16/4/11.
//  Copyright © 2016年 ST. All rights reserved.
//

#import "STHTMLImageContentCell.h"

#import "STHTMLImageContent.h"

#import <Masonry.h>

#import <UIImageView+WebCache.h>

#import "UIImage+Initial.h"

@implementation STHTMLImageContentCell
{
    UIImageView *_picView;
}
- (void)configure
{
    [super configure];

    _picView = [UIImageView new];
    _picView.backgroundColor = RGBCOLOR(200, 200, 169);
    [self.contentView addSubview:_picView];
    [_picView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(@(STHTMLContentCellLeftRightEdgeMargin));
        make.right.equalTo(@(-STHTMLContentCellLeftRightEdgeMargin));
        make.top.equalTo(@(STHTMLContentCellTopEdgeMargin));
        make.bottom.equalTo(@(-STHTMLContentCellBottomEdgeMargin));
    }];
}


- (void)configureCellWithObject:(STHTMLImageContent *)anObj
{
    [super configureCellWithObject:anObj];
    NSAssert([anObj isKindOfClass:STHTMLImageContentClass], @"所传递实体类不正确");

    NSURL *url = [NSURL URLWithString:[anObj.content componentsSeparatedByString:@"?"][0]];
    [_picView sd_setImageWithURL:url placeholderImage:nil options:SDWebImageRetryFailed|SDWebImageLowPriority|SDWebImageProgressiveDownload progress:nil completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType, NSURL *imageURL) {
        NSLog(@"%d,%d",(int)image.size.width,(int)image.size.height);
    }];
}


+ (NSString *)cellIdentifier
{
    return @"STHTMLImageContentCell";
}

@end
