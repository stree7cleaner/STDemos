//
//  STSquareTableViewCell.h
//  ST_Demos
//
//  Created by 梁尚嘉 on 16/4/9.
//  Copyright © 2016年 ST. All rights reserved.
//

#import "BaseTableViewCell.h"

@class STSquaredImagesView;
/**
 *  类九宫格布局cell
 */


@interface STSquareTableViewCell : BaseTableViewCell    
@property (nonatomic, strong, readonly) UIImageView *gravatarImageView;
@property (nonatomic, strong, readonly) UILabel *nameLabel;
@property (nonatomic, strong, readonly) UILabel *contentLabel;
@property (nonatomic, strong, readonly) STSquaredImagesView *imagesView;
@property (nonatomic, strong, readonly) UILabel *timeLabel;

@end
