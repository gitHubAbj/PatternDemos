//
//  RemoteLoader.m
//  CommandPattern
//
//  Created by Abj on 2019/4/11.
//  Copyright © 2019 Abj. All rights reserved.
//

#import "RemoteLoader.h"
#import "Light.h"
#import "CDPlayer.h"
#import "LightOnCommand.h"
#import "LightOffCommand.h"
#import "CDPlayerOnCommand.h"
#import "CDPlayerOffCommand.h"

@interface RemoteLoader ()

@property (nonatomic, strong) RemoteControl *rc;

@end

@implementation RemoteLoader

- (instancetype)initWithRemoteControl:(RemoteControl *)rc {
    if (self = [super init]) {
        self.rc = rc;
        [self configCommands];
    }
    return self;
}

- (void)configCommands {
    Light *light = [[Light alloc] init];
    LightOnCommand *lightOnCommand = [[LightOnCommand alloc] initWithLight:light];
    LightOffCommand *lightOffCommand = [[LightOffCommand alloc] initWithLight:light];
    [self.rc setCommandWithIdx:0 onCommand:lightOnCommand offCommand:lightOffCommand];
    
    CDPlayer *cd = [[CDPlayer alloc] init];
    CDPlayerOnCommand *cdPlayerOnCommand = [[CDPlayerOnCommand alloc] initWithCDPlayer:cd];
    CDPlayerOffCommand *cdPlayerOffCommand = [[CDPlayerOffCommand alloc] initWithCDPlayer:cd];
    [self.rc setCommandWithIdx:1 onCommand:cdPlayerOnCommand offCommand:cdPlayerOffCommand];
}

@end
