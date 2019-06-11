//
//  AbstractMessage.h
//  BridgePattern
//
//  Created by Abj on 2019/4/10.
//  Copyright © 2019 Abj. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MessageImplement.h"

NS_ASSUME_NONNULL_BEGIN
/// 抽象信息类
@interface AbstractMessage : NSObject

@property (nonatomic, strong) id<MessageImplement> messageIm;

- (void)send:(NSMutableString *)message;
- (instancetype)initWithImplement:(id<MessageImplement>)implement;

@end

NS_ASSUME_NONNULL_END
