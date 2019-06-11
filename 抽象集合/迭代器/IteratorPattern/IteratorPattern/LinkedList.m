//
//  LinkedList.m
//  IteratorPattern
//
//  Created by Abj on 2019/4/7.
//  Copyright © 2019 Abj. All rights reserved.
//

#import "LinkedList.h"

@interface LinkedList ()

@property (nonatomic, strong) Node *firstNode;
@property (nonatomic, assign) NSInteger count;

@end

@implementation LinkedList

- (void)addItem:(NSString *)item {
    if (self.firstNode == nil) {
        self.firstNode = [Node nodeWithName:item];
        self.count++;
    } else {
        [self addItem:item node:self.firstNode];
    }
}

- (void)addItem:(NSString *)item node:(Node *)node {
    if (!node.nextNode) {
        node.nextNode = [Node nodeWithName:item];
        self.count++;
    } else {
        [self addItem:item node:node.nextNode];
    }
}

@end
