//
//  EmailChain.m
//  ChainOfResponsibilityPattern
//
//  Created by Abj on 2019/4/17.
//  Copyright © 2019 Abj. All rights reserved.
//

#import "EmailChain.h"
#import "RegExCategories.h"

@interface EmailChain ()

@property (nonatomic, weak) id<ChainOfResponsibilityProtocol> nextSuccessor;

@end

@implementation EmailChain

@synthesize successor;

- (void)setSuccessor:(id<ChainOfResponsibilityProtocol>)successor {
    self.nextSuccessor = successor;
}

- (id<ChainOfResponsibilityProtocol>)successor {
    return self.nextSuccessor;
}

- (void)handlerRequest:(id)request {
    NSString *str = request;
    if ([str isKindOfClass:[NSString class]] && str.length > 0) {
        // 匹配邮箱
        BOOL isMatch = [str isMatch:RX(@"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}")];
        if (isMatch) {
            NSLog(@"%@ is a Email", str);
        } else {
            [self.successor handlerRequest:request];
        }
    } else {
        [self.successor handlerRequest:request];
    }
}

@end
