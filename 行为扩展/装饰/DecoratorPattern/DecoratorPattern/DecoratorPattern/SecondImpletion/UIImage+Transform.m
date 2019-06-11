//
//  UIImage+Transform.m
//  DecoratorPattern
//
//  Created by Abj on 2019/1/28.
//  Copyright © 2019 Abj. All rights reserved.
//

#import "UIImage+Transform.h"
#import "UIImage+BaseFilter.h"

@implementation UIImage (Transform)

- (UIImage *)imageWithTransform:(CGAffineTransform)transform {
    CGContextRef context = [self beginContext];
    CGContextConcatCTM(context, transform);
    UIImage *imageOut = [self getImageFromCurrentImageContext];
    [self endContext];
    return imageOut;
}

@end
