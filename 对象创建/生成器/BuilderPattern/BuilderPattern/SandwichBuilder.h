//
//  SandwichBuilder.h
//  BuilderPattern
//
//  Created by Abj on 2019/3/27.
//  Copyright © 2019 Abj. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol SandwichBuilder <NSObject>

- (void)prepareBread;
- (void)addMeat;

@end

NS_ASSUME_NONNULL_END
