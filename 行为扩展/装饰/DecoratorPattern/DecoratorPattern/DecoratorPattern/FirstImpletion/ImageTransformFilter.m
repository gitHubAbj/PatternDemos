//
//  ImageTransformFilter.m
//  DecoratorPattern
//
//  Created by Abj on 2019/1/28.
//  Copyright © 2019 Abj. All rights reserved.
//

#import "ImageTransformFilter.h"

@implementation ImageTransformFilter

@synthesize transform = transform_;

- (instancetype)initWithImageComponent:(id<ImageComponent>)component
                             transform:(CGAffineTransform)transform {
    if (self = [super initWithImageComponent:component]) {
        [self setTransform:transform];
    }
    
    return self;
}

- (void)apply {
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextConcatCTM(context, transform_);
}

@end
