//
//  STSquareTableViewCell+STSquareBeatutyComment.m
//  ST_Demos
//
//  Created by 梁尚嘉 on 16/4/9.
//  Copyright © 2016年 ST. All rights reserved.
//

#import "STSquareTableViewCell+STSquareBeatutyComment.h"
#import "STSquaredImagesView.h"

#import "STSquareBeautyComment.h"

#import "NSString+TimeStamp.h"

#import <Masonry.h>

#import "STSquareTableViewCellMacro.h"

@implementation STSquareTableViewCell (STSquareBeatutyComment)
- (void)configureCellWithObject:(STSquareBeautyComment *)anObj
{
    NSAssert([anObj isKindOfClass:[STSquareBeautyComment class]], @"所传递的实体类不正确");

    //图片组

    [self.imagesView mas_updateConstraints:^(MASConstraintMaker *make) {
        make.height.equalTo(@([self.imagesView respectHeightWithImageCount:anObj.images.count]));
        [super updateConstraints];
    }];


    self.gravatarImageView.image = [UIImage imageNamed:anObj.gravatar];
    self.nameLabel.text          = anObj.name;
    self.contentLabel.text       = anObj.content;
    self.imagesView.images       = anObj.images;
    dispatch_async(dispatch_queue_create("STSquareTableViewCell_STSquareBeatutyComment", NULL), ^{
        NSString * timeString = [NSString getTimeRemindWithTimeIntervalSince1970:anObj.timeStamp];
        dispatch_async(dispatch_get_main_queue(), ^{
            self.timeLabel.text = timeString;
        });
    });

}


@end
