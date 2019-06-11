//
//  LinkedListIterator.h
//  IteratorPattern
//
//  Created by Abj on 2019/4/7.
//  Copyright © 2019 Abj. All rights reserved.
//  迭代器

#import <Foundation/Foundation.h>
#import "LinkedList.h"
#import "IteratorProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface LinkedListIterator : NSObject<IteratorProtocol>

+ (instancetype)linkedListIteratorWithLinkedList:(LinkedList *)linkedList;

@end

NS_ASSUME_NONNULL_END
