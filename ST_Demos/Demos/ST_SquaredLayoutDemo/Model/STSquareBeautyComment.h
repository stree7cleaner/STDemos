//
//  STSquareBeautyComment.h
//  ST_Demos
//
//  Created by 梁尚嘉 on 16/4/9.
//  Copyright © 2016年 ST. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 *  评论时间流模型
 */

@interface STSquareBeautyComment : NSObject


@property (nonatomic, strong, readonly) NSString *gravatar;         //头像
@property (nonatomic, strong, readonly) NSString *name;             //名字
@property (nonatomic, assign, readonly) NSTimeInterval timeStamp;   //时间擢
@property (nonatomic, strong, readonly) NSString *content;          //内容
@property (nonatomic, strong, readonly) NSArray  *images;           //图片

/**
 *  假数据（评论）
 *  @return STSquareBeautyComment类型的实例数组
 */
+ (NSArray *)fakeDatas;

@end
