//
//  EndChain.m
//  ChainOfResponsibilityPattern
//
//  Created by Abj on 2019/4/17.
//  Copyright © 2019 Abj. All rights reserved.
//

#import "EndChain.h"

@interface EndChain ()

@property (nonatomic, weak) id<ChainOfResponsibilityProtocol> nextSuccessor;

@end

@implementation EndChain

@synthesize successor;

- (void)setSuccessor:(id<ChainOfResponsibilityProtocol>)successor {
}

- (id<ChainOfResponsibilityProtocol>)successor {
    return self;
}

- (void)handlerRequest:(id)request {
    NSLog(@"无法处理该请求");
}

@end
