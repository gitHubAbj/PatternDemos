//
//  Stroke.m
//  VisitorPattern
//
//  Created by Abj on 2019/4/27.
//  Copyright © 2019 Abj. All rights reserved.
//

#import "Stroke.h"

@interface Stroke ()

@property (nonatomic, strong) NSMutableArray<id<Mark>> *children;

@end

@implementation Stroke

@dynamic location;

- (instancetype)init {
    if (self = [super init]) {
        _children = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)addMark:(id<Mark>)mark {
    [_children addObject:mark];
}

- (void)removeMark:(id<Mark>)mark {
    [_children removeObject:mark];
}

- (void)setLocation:(CGPoint)location {
    
}

- (CGPoint)location {
    if (_children.count == 0) {
        return CGPointZero;
    } else {
        return self.children.firstObject.location;
    }
}

- (id<Mark>)lastChild {
    return _children.lastObject;
}

- (void)acceptMarkVisitor:(id<MarkVisitor>)visitor {
    for (id<Mark> dot in self.children) {
        [dot acceptMarkVisitor:visitor];
    }
    
    [visitor visitStroke:self];
}

@end
