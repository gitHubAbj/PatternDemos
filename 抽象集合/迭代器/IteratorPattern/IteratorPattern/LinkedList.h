//
//  LinkedList.h
//  IteratorPattern
//
//  Created by Abj on 2019/4/7.
//  Copyright © 2019 Abj. All rights reserved.
//  链表类

#import <Foundation/Foundation.h>
#import "Node.h"

NS_ASSUME_NONNULL_BEGIN

@interface LinkedList : NSObject

@property (nonatomic, strong, readonly) Node *firstNode;
@property (nonatomic, assign, readonly) NSInteger count;

- (void)addItem:(NSString *)item;

@end

NS_ASSUME_NONNULL_END
