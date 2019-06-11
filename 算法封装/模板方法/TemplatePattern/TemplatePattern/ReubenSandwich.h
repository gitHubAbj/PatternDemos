//
//  ReubenSandwich.h
//  TemplatePattern
//
//  Created by Abj on 2019/2/24.
//  Copyright © 2019 Abj. All rights reserved.
//

#import "AnySandwich.h"

NS_ASSUME_NONNULL_BEGIN

@interface ReubenSandwich : AnySandwich

- (void)prepareBread;
- (void)addMeat;
- (void)addCondiments;
- (void)extraStep;

// 鲁宾三明治的特有操作
- (void)cutRyeBread;
- (void)addCornBeef;
- (void)addSauerkraut;
- (void)addThousandIslandDressing;
- (void)addSwissCheese;
- (void)grillIt;

@end

NS_ASSUME_NONNULL_END
