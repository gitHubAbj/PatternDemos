//
//  FlowerContainerView.m
//  FlyweightPattern
//
//  Created by Abj on 2019/4/22.
//  Copyright © 2019 Abj. All rights reserved.
//

#import "FlowerContainerView.h"
#import "ExtrinsicFlowerState.h"

@implementation FlowerContainerView

- (void)drawRect:(CGRect)rect {
    for (NSValue *stateValue in self.flowerList) {
        struct ExtrinsicFlowerState state;
        [stateValue getValue:&state];

        UIView *flowerView = state.flowerView;
        CGRect frame = state.area;
        [flowerView drawRect:frame];
    }
}

@end
