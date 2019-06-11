//
//  LinkedListIterator.m
//  IteratorPattern
//
//  Created by Abj on 2019/4/7.
//  Copyright © 2019 Abj. All rights reserved.
//  

#import "LinkedListIterator.h"

@interface LinkedListIterator ()

@property (nonatomic, strong) LinkedList *linkedList;
@property (nonatomic, strong) Node *currentNode;

@end

@implementation LinkedListIterator

+ (instancetype)linkedListIteratorWithLinkedList:(LinkedList *)linkedList {
    LinkedListIterator *iterator = [[LinkedListIterator alloc] init];
    iterator.linkedList = linkedList;
    return iterator;
}

- (id)nextObject {
    if (!self.currentNode) {
        self.currentNode = self.linkedList.firstNode;
    } else {
        self.currentNode = self.currentNode.nextNode;
    }
    return self.currentNode;
}

@end
