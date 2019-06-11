//
//  Car.m
//  FacadePattern
//
//  Created by Abj on 2019/2/25.
//  Copyright © 2019 Abj. All rights reserved.
//

#import "Car.h"

@implementation Car

- (void)releaseBreaks {
    NSLog(@"松开刹车");
}

- (void)changeGears {
    NSLog(@"换挡");
}

- (void)pressAccelerator {
    NSLog(@"踩油门");
}

- (void)pressBreaks {
    NSLog(@"松油门");
}

- (void)releaseAccelerator {
    NSLog(@"刹车");
}

@end
