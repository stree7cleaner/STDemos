//
//  STSquareTableViewCell.m
//  ST_Demos
//
//  Created by 梁尚嘉 on 16/4/9.
//  Copyright © 2016年 ST. All rights reserved.
//

#import "STSquareTableViewCell.h"

#import "STSquaredImagesView.h"
#import "SDPhotoBrowser.h"

#import "Masonry.h"

#import "STSquareTableViewCellMacro.h"


@interface STSquareTableViewCell () <STSquaredImagesViewDelegate,SDPhotoBrowserDelegate>
@property (nonatomic, strong, readwrite) UIImageView *gravatarImageView;
@property (nonatomic, strong, readwrite) UILabel *nameLabel;
@property (nonatomic, strong, readwrite) UILabel *contentLabel;
@property (nonatomic, strong, readwrite) STSquaredImagesView *imagesView;
@property (nonatomic, strong, readwrite) UILabel *timeLabel;

@end

@implementation STSquareTableViewCell


/**
 *  初始设置
 */
- (void)configure
{
    [super configure];
    self.selectionStyle = UITableViewCellSelectionStyleNone;

    [self.contentView addSubview:self.gravatarImageView];
    [self.contentView addSubview:self.nameLabel];
    [self.contentView addSubview:self.contentLabel];
    [self.contentView addSubview:self.imagesView];
    [self.contentView addSubview:self.timeLabel];

    [self setupConstraints];
}

/**
 *  设定布局
 */
- (void)setupConstraints
{
    //头像
    [self.gravatarImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(@(kLeftRightEdgeMargin));
        make.top.equalTo(@(kTopEdgeMargin));
        make.height.width.equalTo(@(kGravatarImageViewHeight));
    }];

    //名字
    [self.nameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.gravatarImageView.mas_right).offset(15);
        make.centerY.equalTo(self.gravatarImageView.mas_centerY).offset(-7);
    }];

    //时间
    [self.timeLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.nameLabel);
        make.top.equalTo(self.nameLabel.mas_bottom).offset(3);
    }];

    //内容
    [self.contentLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.gravatarImageView.mas_bottom).offset(15);
        make.left.equalTo(self.gravatarImageView);
        make.right.equalTo(@(-kLeftRightEdgeMargin));
    }];


    //图片组
    [self.imagesView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.equalTo(self.contentLabel);
        make.top.equalTo(self.contentLabel.mas_bottom).offset(10);
        make.height.equalTo(@0);
        make.bottom.equalTo(@(-kBottomEdgeMargin));
    }];

    //over
}

#pragma mark - Getters
- (UIImageView *)gravatarImageView
{
    if (!_gravatarImageView) {
        _gravatarImageView = [UIImageView new];
    }
    return _gravatarImageView;
}

- (UILabel *)nameLabel
{
    if (!_nameLabel) {
        _nameLabel           = [[UILabel alloc]init];
        _nameLabel.font      = [UIFont systemFontOfSize:17];
        _nameLabel.textColor = RGBCOLOR(230, 179, 61);

    }
    return _nameLabel;
}

- (UILabel *)contentLabel
{
    if (!_contentLabel) {
        _contentLabel               = [[UILabel alloc]init];
        _contentLabel.numberOfLines = 0;
        _contentLabel.textColor     = RGBCOLOR(114, 111, 128);
    }
    return _contentLabel;
}

- (UILabel *)timeLabel
{
    if (!_timeLabel) {
        _timeLabel           = [[UILabel alloc]init];
        _timeLabel.font      = [UIFont systemFontOfSize:13];
        _timeLabel.textColor = RGBCOLOR(200, 200, 169);
    }
    return _timeLabel;
}


- (STSquaredImagesView *)imagesView
{
    if (!_imagesView) {
        _imagesView = [[STSquaredImagesView alloc]initWithEdge:kLeftRightEdgeMargin];
        _imagesView.delegate = self;
    }
    return _imagesView;
}

//高亮
- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated
{
    self.contentView.backgroundColor = highlighted ? RGBCOLOR(255, 245, 247) : nil;
}


#pragma mark - STSquaredImagesViewDelegate
- (void)squaredImagesView:(STSquaredImagesView *)view didSelectImageView:(UIImageView *)imageView atIndex:(NSInteger)index
{
    SDPhotoBrowser *browser = [[SDPhotoBrowser alloc] init];
    browser.sourceImagesContainerView = view; // 原图的父控件
    browser.imageCount = MIN(kMaxNumOfImage, view.images.count); // 图片总数
    browser.currentImageIndex = (int)index;
    browser.delegate = self;
    [browser show];
}

#pragma mark - photobrowser代理方法

// 返回临时占位图片（即原来的小图）
- (UIImage *)photoBrowser:(SDPhotoBrowser *)browser placeholderImageForIndex:(NSInteger)index
{
    return [[self.imagesView viewAtIndex:index] image];
}


@end
