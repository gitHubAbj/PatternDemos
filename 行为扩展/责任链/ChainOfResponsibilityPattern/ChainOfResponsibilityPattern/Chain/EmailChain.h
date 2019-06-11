//
//  EmailChain.h
//  ChainOfResponsibilityPattern
//
//  Created by Abj on 2019/4/17.
//  Copyright © 2019 Abj. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ChainOfResponsibilityProtocol.h"

NS_ASSUME_NONNULL_BEGIN

/// 验证邮箱节点
@interface EmailChain : NSObject<ChainOfResponsibilityProtocol>

@end

NS_ASSUME_NONNULL_END
