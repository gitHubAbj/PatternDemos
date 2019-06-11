//
//  FlowerView.m
//  FlyweightPattern
//
//  Created by Abj on 2019/4/22.
//  Copyright © 2019 Abj. All rights reserved.
//

#import "FlowerView.h"

@implementation FlowerView

- (void)drawRect:(CGRect)rect {
    [self.image drawInRect:rect];
}

@end
