//
//  SandwichConcreteBuilder.h
//  BuilderPattern
//
//  Created by Abj on 2019/3/27.
//  Copyright © 2019 Abj. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SandwichBuilder.h"

@class Sandwich;
NS_ASSUME_NONNULL_BEGIN

@interface SandwichConcreteBuilder : NSObject<SandwichBuilder>

// 获取生成的三明治
- (Sandwich *)getSandwich;

@end

NS_ASSUME_NONNULL_END
