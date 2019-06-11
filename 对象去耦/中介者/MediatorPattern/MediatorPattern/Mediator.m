//
//  Mediator.m
//  MediatorPattern
//
//  Created by Abj on 2019/4/18.
//  Copyright © 2019 Abj. All rights reserved.
//

#import "Mediator.h"

@implementation Mediator

- (void)notify:(id)obj {
    if (obj == self.collA) {
        [self.collB notified:@"B Notified"];
    } else {
        [self.collA notified:@"A Notified"];
    }
}

@end
