//
//  Adapter.h
//  AdapterPattern
//
//  Created by Abj on 2019/3/31.
//  Copyright © 2019 Abj. All rights reserved.
//

#import "Target.h"

@class Adaptee;

NS_ASSUME_NONNULL_BEGIN

@interface Adapter : Target

@property (nonatomic, strong) Adaptee *adaptee;

@end

NS_ASSUME_NONNULL_END
