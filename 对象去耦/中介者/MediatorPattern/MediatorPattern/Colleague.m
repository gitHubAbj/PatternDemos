//
//  Colleague.m
//  MediatorPattern
//
//  Created by Abj on 2019/4/18.
//  Copyright © 2019 Abj. All rights reserved.
//

#import "Colleague.h"
#import "Mediator.h"

@implementation Colleague

- (instancetype)initWithMediator:(Mediator *)mediator {
    if (self = [super init]) {
        self.mediator = mediator;
    }
    return self;
}

- (void)notifyAnother {
    [self.mediator notify:self];
}

- (void)notified:(NSString *)message {
    NSLog(@"%@", message);
}

@end
