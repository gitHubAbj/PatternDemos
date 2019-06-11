//
//  UIImage+Transform.h
//  DecoratorPattern
//
//  Created by Abj on 2019/1/28.
//  Copyright © 2019 Abj. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (Transform)

- (UIImage *)imageWithTransform:(CGAffineTransform)transform;

@end

NS_ASSUME_NONNULL_END
