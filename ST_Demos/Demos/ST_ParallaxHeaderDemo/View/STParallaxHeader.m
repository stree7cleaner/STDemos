//
//  STParallaxHeader.m
//  ST_Demos
//
//  Created by 梁尚嘉 on 16/4/8.
//  Copyright © 2016年 ST. All rights reserved.
//

#import "STParallaxHeader.h"
@interface STParallaxHeader ()
@property (nonatomic, readwrite) UIImageView  *imageView;
@property (nonatomic, weak)      UIScrollView *imageScrollView;
@end


@implementation STParallaxHeader
+ (instancetype)parallaxHeaderViewWithCGSize:(CGSize)headerSize
{
    STParallaxHeader *headerView = [[[self class] alloc] init];
    [headerView setFrame:(CGRect){{0,0},headerSize}];
    [headerView setup];
    return headerView;
}

- (void)setup
{

    //滚动视图
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:self.bounds];
    self.imageScrollView = scrollView;

    //顶层图片容器
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:scrollView.bounds];
    imageView.contentMode = UIViewContentModeScaleAspectFill;
    imageView.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin |
                                 UIViewAutoresizingFlexibleRightMargin |
                                 UIViewAutoresizingFlexibleTopMargin |
                                 UIViewAutoresizingFlexibleBottomMargin |
                                 UIViewAutoresizingFlexibleHeight |
                                 UIViewAutoresizingFlexibleWidth;
    _imageView = imageView;


    [self.imageScrollView addSubview:imageView];
    [self addSubview:self.imageScrollView];

}


- (void)layoutHeaderViewForScrollViewOffset:(CGPoint)offset
{
    CGRect frame = self.imageScrollView.frame;

    if (offset.y > 0)
    {
        //向上滚
        frame.origin.y = MAX(offset.y *kParallaxDeltaFactor, 0);
        self.imageScrollView.frame = frame;
        self.clipsToBounds = YES;
    }
    else
    {   //向下滚
        CGFloat delta     = 0.0f;
        CGRect rect       = kDefaultHeaderFrame;
        delta             = fabs(MIN(0.0f, offset.y));
        rect.origin.y    -= delta;
        rect.size.height += delta;
        self.imageScrollView.frame = rect;
        self.clipsToBounds = NO;
    }
}


@end
