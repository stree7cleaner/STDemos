//
//  Doctor.h
//  MySDAutolayoutDemo
//
//  Created by liangshangjia on 16/4/1.
//  Copyright © 2016年 Sami-Network. All rights reserved.
//

#import <Foundation/Foundation.h>


/**
 *  医生model
 */

@interface STDemoDoctor : NSObject
@property (nonatomic, strong, readonly) NSString *gravatar; //头像
@property (nonatomic, strong, readonly) NSString *name;     //名字
@property (nonatomic, strong, readonly) NSString *type;     //医生级别
@property (nonatomic, strong, readonly) NSString *hospital; //所职医院
@property (nonatomic, strong, readonly) NSString *goodat;   //擅长、主治

/**
 *  假数据（医生）
 *  @return Doctor类型的实例数组
 */
+ (NSArray *)fakeDatas;

@end
