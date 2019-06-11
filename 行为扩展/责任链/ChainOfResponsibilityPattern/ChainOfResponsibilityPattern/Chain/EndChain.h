//
//  EndChain.h
//  ChainOfResponsibilityPattern
//
//  Created by Abj on 2019/4/17.
//  Copyright © 2019 Abj. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ChainOfResponsibilityProtocol.h"

NS_ASSUME_NONNULL_BEGIN

/// 链尾
@interface EndChain : NSObject<ChainOfResponsibilityProtocol>

@end

NS_ASSUME_NONNULL_END
