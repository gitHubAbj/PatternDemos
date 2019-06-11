//
//  HeadChain.m
//  ChainOfResponsibilityPattern
//
//  Created by Abj on 2019/4/17.
//  Copyright © 2019 Abj. All rights reserved.
//

#import "HeadChain.h"

@interface HeadChain ()

@property (nonatomic, weak) id<ChainOfResponsibilityProtocol> nextSuccessor;

@end

@implementation HeadChain

@synthesize successor;

- (void)setSuccessor:(id<ChainOfResponsibilityProtocol>)successor {
    self.nextSuccessor = successor;
}

- (id<ChainOfResponsibilityProtocol>)successor {
    return self.nextSuccessor;
}

- (void)handlerRequest:(id)request {
    [self.successor handlerRequest:request];
}

@end
