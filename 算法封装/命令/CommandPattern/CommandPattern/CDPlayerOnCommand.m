//
//  CDPlayerOnCommand.m
//  CommandPattern
//
//  Created by Abj on 2019/4/11.
//  Copyright © 2019 Abj. All rights reserved.
//

#import "CDPlayerOnCommand.h"

@interface CDPlayerOnCommand ()

@property (nonatomic, strong) CDPlayer *cdPlayer;

@end

@implementation CDPlayerOnCommand

- (instancetype)initWithCDPlayer:(CDPlayer *)cdPlayer {
    if (self = [super init]) {
        self.cdPlayer = cdPlayer;
    }
    return self;
}

- (void)execute {
    [self.cdPlayer CDPlayerOn];
}

- (void)undo {
    [self.cdPlayer CDPlayerOff];
}

@end
