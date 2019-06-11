//
//  Mediator.h
//  MediatorPattern
//
//  Created by Abj on 2019/4/18.
//  Copyright © 2019 Abj. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ColleagueA.h"
#import "ColleagueB.h"

NS_ASSUME_NONNULL_BEGIN

@interface Mediator : NSObject

@property (nonatomic, weak) ColleagueA *collA;
@property (nonatomic, weak) ColleagueB *collB;

- (void)notify:(id)obj;

@end

NS_ASSUME_NONNULL_END
