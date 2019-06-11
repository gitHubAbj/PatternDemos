//
//  Originator.m
//  MementoPattern
//
//  Created by Abj on 2019/4/1.
//  Copyright © 2019 Abj. All rights reserved.
//

#import "Originator.h"
#import "Memento.h"

@implementation Originator

- (Memento *)createMemento {
    Memento *memo = [[Memento alloc] init];
    memo.age = self.age;
    memo.name = self.name;
    return memo;
}

- (void)setMemento:(Memento *)memento {
    self.age = memento.age;
    self.name = memento.name;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"name = %@, age = %ld", self.name, self.age];
}

@end
