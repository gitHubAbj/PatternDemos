//
//  UserNameChain.m
//  ChainOfResponsibilityPattern
//
//  Created by Abj on 2019/4/17.
//  Copyright © 2019 Abj. All rights reserved.
//

#import "UserNameChain.h"
#import "RegExCategories.h"

@interface UserNameChain ()

@property (nonatomic, weak) id<ChainOfResponsibilityProtocol> nextSuccessor;

@end

@implementation UserNameChain

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
        // 匹配用户名(用户名长度为6-20位之间,大小写字母或者数字均可)
        BOOL isMatch = [str isMatch:RX(@"^[A-Za-z0-9]{6,20}+$")];
        if (isMatch) {
            NSLog(@"%@ is a UserName", str);
        } else {
            [self.successor handlerRequest:request];
        }
    } else {
        [self.successor handlerRequest:request];
    }
}

@end

