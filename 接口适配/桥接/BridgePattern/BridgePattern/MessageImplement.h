//
//  MessageImplement.h
//  BridgePattern
//
//  Created by Abj on 2019/4/10.
//  Copyright © 2019 Abj. All rights reserved.
//  接口协议

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol MessageImplement <NSObject>

- (void)sendMessage:(NSString *)message;

@end

NS_ASSUME_NONNULL_END
