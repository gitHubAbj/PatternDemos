//
//  ImageTransformFilter.h
//  DecoratorPattern
//
//  Created by Abj on 2019/1/28.
//  Copyright © 2019 Abj. All rights reserved.
//

#import "ImageFilter.h"

NS_ASSUME_NONNULL_BEGIN

@interface ImageTransformFilter : ImageFilter
{
    @private
    CGAffineTransform transform_;
}

@property (nonatomic, assign) CGAffineTransform transform;

- (instancetype)initWithImageComponent:(id<ImageComponent>)component
                             transform:(CGAffineTransform)transform;

- (void)apply;

@end

NS_ASSUME_NONNULL_END
