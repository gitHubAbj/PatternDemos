//
//  CommonMessage.m
//  BridgePattern
//
//  Created by Abj on 2019/4/10.
//  Copyright © 2019 Abj. All rights reserved.
//

#import "CommonMessage.h"

@implementation CommonMessage

- (void)send:(NSMutableString *)message {
    [message insertString:@"【普通消息:" atIndex:0];
    [message appendString:@"】"];
    [self.messageIm sendMessage:message];
}

@end
