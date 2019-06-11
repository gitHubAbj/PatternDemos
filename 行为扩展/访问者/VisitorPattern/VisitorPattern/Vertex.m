//
//  Vertex.m
//  VisitorPattern
//
//  Created by Abj on 2019/4/27.
//  Copyright © 2019 Abj. All rights reserved.
//

#import "Vertex.h"

@implementation Vertex

@synthesize location;

@synthesize lastChild;

@synthesize size;

- (void)addMark:(id<Mark>)mark {}

- (void)removeMark:(id<Mark>)mark {}

- (id<Mark>)lastChild {
    return nil;
}

- (void)acceptMarkVisitor:(id<MarkVisitor>)visitor {
    [visitor visitVertex:self];
}

@end
