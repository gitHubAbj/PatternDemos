//
//  Composite.m
//  CompositePattern
//
//  Created by Abj on 2019/4/2.
//  Copyright © 2019 Abj. All rights reserved.
//

#import "Composite.h"

@implementation Composite

- (instancetype)initWithName:(NSString *)name {
    if (self = [super initWithName:name]) {
        self.childArr = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)addComponent:(Components *)component {
    [self.childArr addObject:component];
}

- (void)removeComponent:(Components *)component {
    [self.childArr removeObject:component];
}

- (void)display:(NSInteger)depth {
    NSLog(@"[level:%ld_%@]",depth, self.name);
    for (Components *component in self.childArr) {
        [component display:depth + 1];
    }
}

@end
