//
//  ImageFilter.m
//  DecoratorPattern
//
//  Created by Abj on 2019/1/28.
//  Copyright © 2019 Abj. All rights reserved.
//

#import "ImageFilter.h"

@implementation ImageFilter

@synthesize component = component_;

- (id)initWithImageComponent:(id<ImageComponent>)component {
    if (self = [super init]) {
        [self setComponent:component];
    }
    
    return self;
}

- (void)apply {
    // 应该由子类重载,应用真正的滤镜
}

/// 截获消息
- (id)forwardingTargetForSelector:(SEL)aSelector {
    NSString *selectorName = NSStringFromSelector(aSelector);
    if ([selectorName hasPrefix:@"draw"]) {
        [self apply];
    }
    
    return component_;
}

@end
