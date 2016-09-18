//
//  CustomImagesView.h
//  CustomImagesViewTest
//
//  Created by 梁尚嘉 on 16/4/9.
//  Copyright © 2016年 ST. All rights reserved.
//

#import <UIKit/UIKit.h>

#define kBetweenMargin .5f  //图片之前的距离
#define kMaxNumOfImage 9    //图片最多数

/**
 *  自定义九宫格图片视图
 */

/* ========
 ** ========
 *** ========
 **** drawRect方法创建可以成功实现，但是调试过程中会报错并crash，现暂由imageView数组代替，后续更新
 ***** 内部图片由并发队列下载控制(已去掉)
 */

@class STSquaredImagesView;
@protocol STSquaredImagesViewDelegate <NSObject>

@optional
- (void)squaredImagesView:(STSquaredImagesView *)view
       didSelectImageView:(UIImageView *)imageView
                  atIndex:(NSInteger)index;

@end

@interface STSquaredImagesView : UIView

/**
 *  构造器
 *  @param edge 横向离屏幕边的距离(用于计算图片宽度)
 *  @return STSquaredImagesView
 */
- (instancetype)initWithEdge:(CGFloat)edge;


/** 期望高度*/
- (CGFloat)respectHeightWithImageCount:(NSInteger)num;

/** 对应下标的图片容器*/
- (UIImageView *)viewAtIndex:(NSInteger)index;

/** 图片数组*/
@property (nonatomic, strong) NSArray *images;

@property (nonatomic, weak) id<STSquaredImagesViewDelegate> delegate;

/** 弃用方法*/
- (instancetype)initWithFrame:(CGRect)frame NS_UNAVAILABLE;
- (instancetype)initWithCoder:(NSCoder *)aDecoder NS_UNAVAILABLE;

@end
