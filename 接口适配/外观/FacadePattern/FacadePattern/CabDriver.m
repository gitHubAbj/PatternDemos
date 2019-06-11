//
//  CabDriver.m
//  FacadePattern
//
//  Created by Abj on 2019/2/25.
//  Copyright © 2019 Abj. All rights reserved.
//

#import "CabDriver.h"
#import "Taximeter.h"
#import "Car.h"

@implementation CabDriver

- (void)driveToLocation:(CGPoint)x {
    // 启动计价器
    Taximeter *meter = [[Taximeter alloc] init];
    [meter start];
    
    // 操作车辆,直到抵达位置
    Car *car = [[Car alloc] init];
    [car releaseBreaks];
    [car changeGears];
    [car pressAccelerator];
    
    // 当到达了位置x,就停下车和计价器
    [car releaseAccelerator];
    [car pressBreaks];
    [meter stop];
}

@end
