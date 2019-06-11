//
//  RemoteControl.h
//  CommandPattern
//
//  Created by Abj on 2019/4/11.
//  Copyright © 2019 Abj. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CommandInterface.h"

NS_ASSUME_NONNULL_BEGIN

/// 命令调用者（遥控器）
@interface RemoteControl : NSObject

//@property (nonatomic, strong) id<CommandInterface> slot;

- (void)onClickWithIdx:(NSInteger)idx;
- (void)offClickWithIdx:(NSInteger)idx;

- (void)setCommandWithIdx:(NSInteger)idx
                onCommand:(id<CommandInterface>)onCommand
               offCommand:(id<CommandInterface>)offCommand;

/// 撤销刚才的操作
- (void)undoAction;

/// 撤销所有操作
- (void)undoAllAction;

@end

NS_ASSUME_NONNULL_END
