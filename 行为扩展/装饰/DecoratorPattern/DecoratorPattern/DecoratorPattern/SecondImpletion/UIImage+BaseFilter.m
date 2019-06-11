//
//  UIImage+BaseFilter.m
//  DecoratorPattern
//
//  Created by Abj on 2019/1/28.
//  Copyright © 2019 Abj. All rights reserved.
//

#import "UIImage+BaseFilter.h"

@implementation UIImage (BaseFilter)

- (CGContextRef)beginContext {
    CGSize size = [self size];
    UIGraphicsBeginImageContextWithOptions(size, NO, 0);
    CGContextRef context = UIGraphicsGetCurrentContext();
    return context;
}

- (UIImage *)getImageFromCurrentImageContext {
    [self drawAtPoint:CGPointZero];
    
    UIImage *imageOut = UIGraphicsGetImageFromCurrentImageContext();
    return imageOut;
}

- (void)endContext {
    UIGraphicsEndImageContext();
}

@end
