//
//  STAppearance.h
//  ST_Demos
//
//  Created by liangshangjia on 16/4/8.
//  Copyright © 2016年 ST. All rights reserved.
//

#import <Foundation/Foundation.h>

#define STNavigationBarDefaultColor [UIColor blackColor]
#define STNavigationBarBGImage [UIImage imageNamed:@"navigationBarBGImg"]
#define STNavigationBarTintColor [UIColor whiteColor]

@interface STAppearance : NSObject

/**
 *  navigationBar设置样式
 */
+ (void)navigationBarAppearance;


@end
