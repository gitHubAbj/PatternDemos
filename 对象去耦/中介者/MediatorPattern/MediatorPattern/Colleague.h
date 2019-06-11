//
//  Colleague.h
//  MediatorPattern
//
//  Created by Abj on 2019/4/18.
//  Copyright © 2019 Abj. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Mediator;

NS_ASSUME_NONNULL_BEGIN

@interface Colleague : NSObject

@property (nonatomic, weak) Mediator *mediator;

- (instancetype)initWithMediator:(Mediator *)mediator;

- (void)notifyAnother;
- (void)notified:(NSString *)message;

@end

NS_ASSUME_NONNULL_END
