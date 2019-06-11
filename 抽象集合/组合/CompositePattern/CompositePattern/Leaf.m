//
//  Leaf.m
//  CompositePattern
//
//  Created by Abj on 2019/4/2.
//  Copyright © 2019 Abj. All rights reserved.
//

#import "Leaf.h"

@implementation Leaf

- (void)addComponent:(Components *)component {
    NSLog(@"can not add");
}

- (void)removeComponent:(Components *)component {
    NSLog(@"can not remove");
}

- (void)display:(NSInteger)depth {
    NSLog(@"[level:%ld_%@]",depth, self.name);
}

@end
