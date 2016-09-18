//
//  STDemo.h
//  ST_Demos
//
//  Created by liangshangjia on 16/4/8.
//  Copyright © 2016年 ST. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface STDemo : NSObject
@property (nonatomic, readonly) NSString *name;                 //Demo名称
@property (nonatomic, readonly) NSString *details;              //Demo描述
@property (nonatomic, readonly) NSString *storyboardSegueID;    //SBID故事板跳转标识码

/**
 *  demo快速生成
 *  @return STDemo实例数组
 */
+ (NSArray *)demos;
@end
