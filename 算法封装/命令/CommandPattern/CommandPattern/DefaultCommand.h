//
//  DefaultCommand.h
//  CommandPattern
//
//  Created by Abj on 2019/4/11.
//  Copyright © 2019 Abj. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CommandInterface.h"

NS_ASSUME_NONNULL_BEGIN

/// 默认命令类(设备默认状态)
@interface DefaultCommand : NSObject<CommandInterface>

@end

NS_ASSUME_NONNULL_END
