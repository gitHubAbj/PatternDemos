//
//  Originator.h
//  MementoPattern
//
//  Created by Abj on 2019/4/1.
//  Copyright © 2019 Abj. All rights reserved.
//  原发器

#import <Foundation/Foundation.h>

@class Memento;

NS_ASSUME_NONNULL_BEGIN

@interface Originator : NSObject

@property (nonatomic, copy) NSString *address;
@property (nonatomic, copy) NSString *name;
@property (nonatomic, assign) NSInteger age;

- (Memento *)createMemento;
- (void)setMemento:(Memento *)memento;

@end

NS_ASSUME_NONNULL_END
