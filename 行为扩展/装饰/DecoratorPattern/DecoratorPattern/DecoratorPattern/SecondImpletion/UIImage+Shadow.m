//
//  UIImage+Shadow.m
//  DecoratorPattern
//
//  Created by Abj on 2019/1/28.
//  Copyright © 2019 Abj. All rights reserved.
//

#import "UIImage+Shadow.h"
#import "UIImage+BaseFilter.h"

@implementation UIImage (Shadow)

- (UIImage *)imageWithDropShadow {
    CGContextRef context = [self beginContext];
    CGSize offset = CGSizeMake(-25, 15);
    CGContextSetShadow(context, offset, 20.0);
    
    UIImage *imageOut = [self getImageFromCurrentImageContext];
    [self endContext];
    return imageOut;
}

@end
