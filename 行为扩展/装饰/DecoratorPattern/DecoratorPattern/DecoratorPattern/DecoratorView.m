//
//  DecoratorView.m
//  DecoratorPattern
//
//  Created by Abj on 2019/1/28.
//  Copyright © 2019 Abj. All rights reserved.
//

#import "DecoratorView.h"

@implementation DecoratorView

@synthesize image = image_;

- (void)setImage:(UIImage *)image {
    image_ = image;
}

- (void)drawRect:(CGRect)rect {
    [image_ drawInRect:rect];
}

@end
