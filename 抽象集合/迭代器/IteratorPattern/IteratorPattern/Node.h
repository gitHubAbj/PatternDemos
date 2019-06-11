//
//  Node.h
//  IteratorPattern
//
//  Created by Abj on 2019/4/7.
//  Copyright © 2019 Abj. All rights reserved.
//  节点

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Node : NSObject

/// 下一节点
@property (nonatomic, strong) Node *nextNode;
@property (nonatomic, strong) NSString *nodeName;

+ (instancetype)nodeWithName:(NSString *)name;

@end

NS_ASSUME_NONNULL_END
