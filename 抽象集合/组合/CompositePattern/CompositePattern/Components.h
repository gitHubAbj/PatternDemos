//
//  ComComponents.h
//  CompositePattern
//
//  Created by Abj on 2019/4/2.
//  Copyright © 2019 Abj. All rights reserved.
//  基础类

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Components : NSObject

@property (nonatomic, copy) NSString *name;

- (instancetype)initWithName:(NSString *)name;
- (void)addComponent:(Components *)component;
- (void)removeComponent:(Components *)component;
- (void)display:(NSInteger)depth;

@end

NS_ASSUME_NONNULL_END
