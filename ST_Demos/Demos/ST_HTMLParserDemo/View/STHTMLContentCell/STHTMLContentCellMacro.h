//
//  STHTMLContentCellMacro.h
//  DTCoreTextDemo
//
//  Created by 梁尚嘉 on 16/4/11.
//  Copyright © 2016年 ST. All rights reserved.
//

#import "UIColor+Ext.h"

#ifndef STHTMLContentCellMacro_h
#define STHTMLContentCellMacro_h


#define STHTMLContentCellTopEdgeMargin          15              //上边距
#define STHTMLContentCellBottomEdgeMargin       5               //下边距
#define STHTMLContentCellLeftRightEdgeMargin    12.f            //左右边距(一般相同)
#define STHTMLContentWidth ([UIScreen mainScreen].bounds.size.width - 2 *STHTMLContentCellLeftRightEdgeMargin)                      //constraintWidth(限宽)

#define STHTMLContentCellFont  [UIFont systemFontOfSize:15.5]   //字体大小
#define STHTMLContentCellTextColor  RGBCOLOR(114, 111, 128)     //字体颜色
#define STHTMLContentCellLineSpacing 5                          //字体行距

#endif /* STHTMLContentCellMacro_h */
