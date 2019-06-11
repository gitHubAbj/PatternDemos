//
//  LightOffCommand.m
//  CommandPattern
//
//  Created by Abj on 2019/4/11.
//  Copyright © 2019 Abj. All rights reserved.
//

#import "LightOffCommand.h"

@interface LightOffCommand ()

@property (nonatomic, strong) Light *light;

@end

@implementation LightOffCommand

- (instancetype)initWithLight:(Light *)light {
    if (self = [super init]) {
        self.light = light;
    }
    return self;
}

- (void)execute {
    [self.light lightOff];
}

- (void)undo {
    [self.light lightOn];
}

@end
