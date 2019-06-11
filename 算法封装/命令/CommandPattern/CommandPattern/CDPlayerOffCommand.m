//
//  CDPlayerOffCommand.m
//  CommandPattern
//
//  Created by Abj on 2019/4/11.
//  Copyright © 2019 Abj. All rights reserved.
//

#import "CDPlayerOffCommand.h"

@interface CDPlayerOffCommand ()

@property (nonatomic, strong) CDPlayer *cdPlayer;

@end

@implementation CDPlayerOffCommand

- (instancetype)initWithCDPlayer:(CDPlayer *)cdPlayer {
    if (self = [super init]) {
        self.cdPlayer = cdPlayer;
    }
    return self;
}

- (void)execute {
    [self.cdPlayer CDPlayerOff];
}

- (void)undo {
    [self.cdPlayer CDPlayerOn];
}

@end
