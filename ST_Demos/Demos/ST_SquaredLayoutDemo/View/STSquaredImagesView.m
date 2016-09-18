//
//  CustomImagesView.m
//  CustomImagesViewTest
//
//  Created by 梁尚嘉 on 16/4/9.
//  Copyright © 2016年 ST. All rights reserved.
//

#import "STSquaredImagesView.h"
#import <CoreGraphics/CoreGraphics.h>

#import <UIImageView+WebCache.h>

#import "UIImage+Initial.h"

//创建self的弱引用
#define WS(ws) __weak __typeof(&*self)ws = self;
#define SS(ss) __strong __typeof(&*self)ss = self;

#define kImageViewTag 200
#define kScreenWidth [UIScreen mainScreen].bounds.size.width

@interface STSquaredImagesView ()
@property (nonatomic, strong) NSMutableArray *imageViews;            //图片容器数组
@property (nonatomic, strong) NSMutableArray *rectValues;            //图片的位置数组
@property (nonatomic, assign) NSInteger       imageCount;            //图片数量，最大为kMaxNumOfImage
@property (nonatomic, assign) CGFloat         width;                 //imageView的宽度
@property (nonatomic, assign) CGFloat         leftRightEdgeMargin;
@property (nonatomic, assign) CGRect          expectFrame;

@end

@implementation STSquaredImagesView

#pragma mark - LifeLoop
- (instancetype)initWithEdge:(CGFloat)edge
{
    self = [super init];
    if (self) {
        _leftRightEdgeMargin = edge;
        _width = (kScreenWidth - (_leftRightEdgeMargin + kBetweenMargin ) *2 )/3.f;
        self.clipsToBounds = YES;
    }
    return self;
}


#pragma mark - Setters
- (void)setImages:(NSArray *)images
{
    _images = images;
    self.imageCount = images.count;
}


- (CGFloat)respectHeightWithImageCount:(NSInteger)num
{
    NSInteger row = [self rowsWithImageCount:MIN(num, kMaxNumOfImage)];
    return  row*_width + (row - 1)*kBetweenMargin;
}

/**
 *  所需高度
 */
- (CGFloat)calculateHeight
{
    CGRect frame      = CGRectZero;
    frame.origin.x    = CGRectGetMinX(self.frame);
    frame.origin.y    = CGRectGetMinY(self.frame);
    frame.size.width  = CGRectGetWidth(self.frame);
    frame.size.height = [self respectHeightWithImageCount:_imageCount];
    self.frame        = frame;
    return CGRectGetHeight(frame);
}


- (NSInteger)rowsWithImageCount:(NSInteger)num
{
    return num/3 + (num%3 ? 1 : 0);
}


- (void)setImageCount:(NSInteger)imageCount
{

    //配置基本信息
    _imageCount = MIN(imageCount,kMaxNumOfImage);
    [self calculateHeight];

    //配置各image的rect
    [self.rectValues removeAllObjects];
    for (NSInteger i = 0; i < _imageCount; i ++) {

        NSInteger idx = i % (_imageCount == 4 ? 2 : 3);
        NSInteger jdx = i / (_imageCount == 4 ? 2 : 3);
        CGRect rect = (CGRect){{(_width + kBetweenMargin)*idx,(_width + kBetweenMargin)*jdx},{_width,_width}};
        NSValue *rectV = [NSValue valueWithCGRect:rect];
        [self.rectValues addObject:rectV];
    }

    //清空图片
    for (UIImageView *imageV in self.imageViews) {
        imageV.image = nil;
    }

    //请求并设置网络图片
    for (NSInteger i = 0 ; i <_imageCount ; i ++) {
        NSString *key = [@(i) stringValue];
        [self drawReplacementFunctionWithKey:key];
    }
}


/**
 *  触碰事件筛选
 */
- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [touches anyObject];
    CGPoint point = [touch locationInView:self];

    for (NSInteger i = 0; i < _imageCount; i ++) {

        if (CGRectContainsPoint([self.rectValues[i] CGRectValue], point)) {

            if (self.delegate && [self.delegate respondsToSelector:@selector(squaredImagesView:didSelectImageView:atIndex:)]) {

                [self.delegate squaredImagesView:self
                              didSelectImageView:[self viewAtIndex:i]
                                         atIndex:i];
            }
            break;
        }
    }

    UITableViewCell *superview = (UITableViewCell *)self.superview.superview;
    ![superview isKindOfClass:[UITableViewCell class]] ?: [superview setHighlighted :NO];
}


- (UIImageView *)viewAtIndex:(NSInteger)index;
{
    NSInteger tag = index + kImageViewTag;
    UIImageView *imageV = [self viewWithTag:index + kImageViewTag];
    //延时加载
    if (!imageV) {

        imageV = [UIImageView new];
        imageV.clipsToBounds = YES;
        imageV.tag = tag;
        [self.imageViews addObject:imageV];
        [self addSubview:imageV];
    }
    return  imageV;
}


/**
 *  drawRect方法的实现 暂时由 @selector(drawReplacementFunctionWithKey:) 代替
 */
- (void)drawReplacementFunctionWithKey:(NSString *)key
{

    NSInteger index = [key integerValue];
    NSString *imageUrlStr;
    CGRect frame;
    [self getInfoWithKeyNum:index imageP:&imageUrlStr frame:&frame];

    UIImageView *imageV = [self viewAtIndex:index];
    imageV.frame = frame;
    [imageV sd_setImageWithURL:[NSURL URLWithString:imageUrlStr]
              placeholderImage:[UIImage st_jpgNamed:@"icon_imageLoad_fail"]
                       options:SDWebImageLowPriority|SDWebImageRetryFailed|SDWebImageDelayPlaceholder
     ];
}

/**
 *  多参返回获取图片与坐标大小
 */
- (void)getInfoWithKeyNum:(NSInteger)keyNum imageP:(NSString **)anImageP frame:(CGRect *)aFrameP
{
    *anImageP = self.images[keyNum];
    *aFrameP = [self.rectValues[keyNum] CGRectValue];
}

#pragma mark - Getters
- (NSMutableArray *)rectValues
{
    if (!_rectValues) {
        _rectValues = [NSMutableArray arrayWithCapacity:1];
    }
    return _rectValues;
}

- (NSMutableArray *)imageViews
{
    if (!_imageViews) {
        _imageViews = [NSMutableArray arrayWithCapacity:1];
    }
    return _imageViews;
}

@end
