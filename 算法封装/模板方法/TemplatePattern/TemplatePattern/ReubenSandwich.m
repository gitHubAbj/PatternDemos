//
//  ReubenSandwich.m
//  TemplatePattern
//
//  Created by Abj on 2019/2/24.
//  Copyright © 2019 Abj. All rights reserved.
//

#import "ReubenSandwich.h"

@implementation ReubenSandwich

- (void)prepareBread {
    [self cutRyeBread];
}

- (void)addMeat {
    [self addCornBeef];
}

- (void)addCondiments {
    [self addSauerkraut];
    [self addThousandIslandDressing];
    [self addSwissCheese];
}

- (void)extraStep {
    [self grillIt];
}

#pragma mark -
#pragma mark ReubenSandwich Specific Methods

- (void)cutRyeBread {
    // 鲁宾三明治需要两片黑麦面包
}

- (void)addCornBeef {
    // 鲁宾三明治加大量腌牛肉
}

- (void)addSauerkraut {
    // 加入德国酸菜
}

- (void)addThousandIslandDressing {
    // 加入千岛酱
}

- (void)addSwissCheese {
    // 加入上等瑞士奶酪
}

- (void)grillIt {
    // 最后要把它烤一下
}

@end
