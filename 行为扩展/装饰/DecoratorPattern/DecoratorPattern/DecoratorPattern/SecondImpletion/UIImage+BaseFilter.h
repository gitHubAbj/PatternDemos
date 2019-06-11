//
//  UIImage+BaseFilter.h
//  DecoratorPattern
//
//  Created by Abj on 2019/1/28.
//  Copyright © 2019 Abj. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (BaseFilter)

- (CGContextRef)beginContext;
- (UIImage *)getImageFromCurrentImageContext;
- (void)endContext;

@end

NS_ASSUME_NONNULL_END
