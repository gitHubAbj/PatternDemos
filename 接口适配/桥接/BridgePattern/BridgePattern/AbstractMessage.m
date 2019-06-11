//
//  AbstractMessage.m
//  BridgePattern
//
//  Created by Abj on 2019/4/10.
//  Copyright © 2019 Abj. All rights reserved.
//  抽象信息类

#import "AbstractMessage.h"

@implementation AbstractMessage

- (instancetype)initWithImplement:(id<MessageImplement>)implement {
    if (self = [super init]) {
        self.messageIm = implement;
    }
    return self;
}

- (void)send:(NSMutableString *)message {
    
}

@end
