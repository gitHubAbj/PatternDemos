//
//  LightOnCommand.h
//  CommandPattern
//
//  Created by Abj on 2019/4/11.
//  Copyright © 2019 Abj. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Light.h"
#import "CommandInterface.h"

NS_ASSUME_NONNULL_BEGIN

/// 打开灯命令类
@interface LightOnCommand : NSObject<CommandInterface>

- (instancetype)initWithLight:(Light *)light;

@end

NS_ASSUME_NONNULL_END
