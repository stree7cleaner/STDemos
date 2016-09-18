//
//  STParallaxHeader.h
//  ST_Demos
//
//  Created by 梁尚嘉 on 16/4/8.
//  Copyright © 2016年 ST. All rights reserved.
//

#import <UIKit/UIKit.h>

#define kDefaultHeaderFrame CGRectMake(0, 0, self.frame.size.width, self.frame.size.height)
static CGFloat kParallaxDeltaFactor = 0.5f;


/**
 *  渐变tableHeader view
 */

@interface STParallaxHeader : UIView
/** 显示图片的容器*/
@property (nonatomic, readonly) UIImageView *imageView;

/**
 *  构造器
 *  @param headerSize CGSize
 *  @return STParallaxHeader实例
 */
+ (instancetype)parallaxHeaderViewWithCGSize:(CGSize)headerSize;


/**
 *  调整header大小
 *  @param offset scrollview偏移量
 */
- (void)layoutHeaderViewForScrollViewOffset:(CGPoint)offset;

@end
