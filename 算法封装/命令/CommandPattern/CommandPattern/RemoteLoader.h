//
//  RemoteLoader.h
//  CommandPattern
//
//  Created by Abj on 2019/4/11.
//  Copyright © 2019 Abj. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RemoteControl.h"

NS_ASSUME_NONNULL_BEGIN

/// 命令装配者(将命令安装到遥控器上)
@interface RemoteLoader : NSObject

@property (nonatomic, strong, readonly) RemoteControl *rc;

- (instancetype)initWithRemoteControl:(RemoteControl *)rc;

@end

NS_ASSUME_NONNULL_END
