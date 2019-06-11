//
//  Node.m
//  IteratorPattern
//
//  Created by Abj on 2019/4/7.
//  Copyright © 2019 Abj. All rights reserved.
//  

#import "Node.h"

@implementation Node

+ (instancetype)nodeWithName:(NSString *)name {
    Node *node = [[Node alloc] init];
    node.nodeName = name;
    return node;
}


@end
