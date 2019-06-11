//
//  QQMessage.m
//  BridgePattern
//
//  Created by Abj on 2019/4/10.
//  Copyright © 2019 Abj. All rights reserved.
//

#import "QQMessage.h"

@implementation QQMessage

- (void)send:(NSMutableString *)message {
    [message insertString:@"【QQ消息:" atIndex:0];
    [message appendString:@"】"];
    [self.messageIm sendMessage:message];
}

@end
