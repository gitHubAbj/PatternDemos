//
//  LightOnCommand.m
//  CommandPattern
//
//  Created by Abj on 2019/4/11.
//  Copyright © 2019 Abj. All rights reserved.
//

#import "LightOnCommand.h"

@interface LightOnCommand ()

@property (nonatomic, strong) Light *light;

@end

@implementation LightOnCommand

- (instancetype)initWithLight:(Light *)light {
    if (self = [super init]) {
        self.light = light;
    }
    return self;
}

- (void)execute {
    [self.light lightOn];
}

- (void)undo {
    [self.light lightOff];
}

@end
