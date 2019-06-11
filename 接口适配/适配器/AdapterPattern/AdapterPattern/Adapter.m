//
//  Adapter.m
//  AdapterPattern
//
//  Created by Abj on 2019/3/31.
//  Copyright © 2019 Abj. All rights reserved.
//

#import "Adapter.h"
#import "Adaptee.h"

@implementation Adapter

- (instancetype)init {
    if (self = [super init]) {
        self.adaptee = [[Adaptee alloc] init];
    }
    return self;
}

- (void)request {
    [self.adaptee specialRequest];
}

@end
