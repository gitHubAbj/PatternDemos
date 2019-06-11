//
//  CDPlayerOffCommand.h
//  CommandPattern
//
//  Created by Abj on 2019/4/11.
//  Copyright © 2019 Abj. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CDPlayer.h"
#import "CommandInterface.h"

NS_ASSUME_NONNULL_BEGIN

/// CD播放器关闭类
@interface CDPlayerOffCommand : NSObject<CommandInterface>

- (instancetype)initWithCDPlayer:(CDPlayer *)cdPlayer;

@end

NS_ASSUME_NONNULL_END
