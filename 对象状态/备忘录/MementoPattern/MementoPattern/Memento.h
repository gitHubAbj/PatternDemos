//
//  Memento.h
//  MementoPattern
//
//  Created by Abj on 2019/4/1.
//  Copyright © 2019 Abj. All rights reserved.
//  备忘录

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Memento : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, assign) NSInteger age;

@end

NS_ASSUME_NONNULL_END
