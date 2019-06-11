//
//  UserNameChain.h
//  ChainOfResponsibilityPattern
//
//  Created by Abj on 2019/4/17.
//  Copyright © 2019 Abj. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ChainOfResponsibilityProtocol.h"

NS_ASSUME_NONNULL_BEGIN

/// 验证用户名节点
@interface UserNameChain : NSObject<ChainOfResponsibilityProtocol>

@end

NS_ASSUME_NONNULL_END
