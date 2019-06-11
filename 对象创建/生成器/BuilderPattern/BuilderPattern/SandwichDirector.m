//
//  SandwichDirector.m
//  BuilderPattern
//
//  Created by Abj on 2019/3/27.
//  Copyright © 2019 Abj. All rights reserved.
//

#import "SandwichDirector.h"

@implementation SandwichDirector

- (void)construct {
    [_concreteBuilder prepareBread];
    [_concreteBuilder addMeat];
}

@end
