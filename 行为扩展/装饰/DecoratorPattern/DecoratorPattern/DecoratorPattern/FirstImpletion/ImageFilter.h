//
//  ImageFilter.h
//  DecoratorPattern
//
//  Created by Abj on 2019/1/28.
//  Copyright © 2019 Abj. All rights reserved.
//  b

#import <Foundation/Foundation.h>
#import "UIImage+ImageComponent.h"

NS_ASSUME_NONNULL_BEGIN

@interface ImageFilter : NSObject <ImageComponent>
{
    @private
    id <ImageComponent> component_;
}

/// 保持一个ImageComponent的引用,这个引用会被其他具体的装饰器装饰.
@property (nonatomic, strong) id<ImageComponent> component;

- (void)apply;
- (id)initWithImageComponent:(id<ImageComponent>)component;
- (id)forwardingTargetForSelector:(SEL)aSelector;

@end

NS_ASSUME_NONNULL_END
