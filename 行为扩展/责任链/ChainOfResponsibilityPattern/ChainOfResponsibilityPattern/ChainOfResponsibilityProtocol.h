//
//  ChainOfResponsibilityProtocol.h
//  ChainOfResponsibilityPattern
//
//  Created by Abj on 2019/4/17.
//  Copyright © 2019 Abj. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol ChainOfResponsibilityProtocol <NSObject>

@property (nonatomic, strong) id<ChainOfResponsibilityProtocol> successor;

- (void)handlerRequest:(id)request;

@end

NS_ASSUME_NONNULL_END
