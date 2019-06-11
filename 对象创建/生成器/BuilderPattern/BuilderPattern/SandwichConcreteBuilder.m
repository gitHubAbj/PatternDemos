//
//  SandwichConcreteBuilder.m
//  BuilderPattern
//
//  Created by Abj on 2019/3/27.
//  Copyright © 2019 Abj. All rights reserved.
//

#import "SandwichConcreteBuilder.h"
#import "Sandwich.h"

@interface SandwichConcreteBuilder ()

@property (nonatomic, strong) Sandwich *reubenSandwich;


@end

@implementation SandwichConcreteBuilder

- (instancetype)init {
    if (self = [super init]) {
        _reubenSandwich = [[Sandwich alloc] init];
    }
    return self;
}

- (void)prepareBread {
    _reubenSandwich.breadType = @"黑麦面包";
}

- (void)addMeat {
    _reubenSandwich.meatType = @"腌牛肉";
}

- (id)getSandwich {
    return _reubenSandwich;
}

@end
