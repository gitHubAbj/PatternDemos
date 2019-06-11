//
//  ComComponents.m
//  CompositePattern
//
//  Created by Abj on 2019/4/2.
//  Copyright © 2019 Abj. All rights reserved.
//

#import "Components.h"

@implementation Components

- (instancetype)initWithName:(NSString *)name {
    if (self = [super init]) {
        self.name = name;
    }
    return self;
}

- (void)addComponent:(Components *)component {
    return;
}

- (void)removeComponent:(Components *)component {
    return;
}

- (void)display:(NSInteger)depth {
    return;
}

@end
