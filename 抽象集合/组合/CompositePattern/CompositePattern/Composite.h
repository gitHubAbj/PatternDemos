//
//  Composite.h
//  CompositePattern
//
//  Created by Abj on 2019/4/2.
//  Copyright © 2019 Abj. All rights reserved.
//  节点类

#import "Components.h"

NS_ASSUME_NONNULL_BEGIN

@interface Composite : Components

@property (nonatomic, strong) NSMutableArray *childArr;

@end

NS_ASSUME_NONNULL_END
