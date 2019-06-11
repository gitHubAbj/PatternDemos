//
//  PhoneNumChain.m
//  ChainOfResponsibilityPattern
//
//  Created by Abj on 2019/4/17.
//  Copyright © 2019 Abj. All rights reserved.
//

#import "PhoneNumChain.h"
#import "RegExCategories.h"

@interface PhoneNumChain ()

@property (nonatomic, weak) id<ChainOfResponsibilityProtocol> nextSuccessor;

@end

@implementation PhoneNumChain

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
        // 匹配电话号码(手机号以13， 15，18开头，八个 \d 数字字符)
        BOOL isMatch = [str isMatch:RX(@"^((13[0-9])|(15[^4,\\D])|(18[0,0-9]))\\d{8}$")];
        if (isMatch) {
            NSLog(@"%@ is a PhoneNum", str);
        } else {
            [self.successor handlerRequest:request];
        }
    } else {
        [self.successor handlerRequest:request];
    }
}

@end
