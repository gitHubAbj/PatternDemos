//
//  SandwichDirector.h
//  BuilderPattern
//
//  Created by Abj on 2019/3/27.
//  Copyright © 2019 Abj. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SandwichBuilder.h"

NS_ASSUME_NONNULL_BEGIN

@interface SandwichDirector : NSObject

// 具体的生成类
@property (nonatomic, strong) id<SandwichBuilder> concreteBuilder;

// 生成动作
- (void)construct;

@end

NS_ASSUME_NONNULL_END
