//
//  RemoteControl.m
//  CommandPattern
//
//  Created by Abj on 2019/4/11.
//  Copyright © 2019 Abj. All rights reserved.
//

#import "RemoteControl.h"
#import "DefaultCommand.h"

@interface RemoteControl ()

@property (nonatomic, strong) NSArray<id<CommandInterface>> *onCommands;
@property (nonatomic, strong) NSArray<id<CommandInterface>> *offCommands;
@property (nonatomic, strong) id<CommandInterface> undoCommand;   ///< 上一次的命令
@property (nonatomic, strong) NSMutableArray<id<CommandInterface>> *completeCommandsArr;
@end

@implementation RemoteControl

- (instancetype)init {
    if (self = [super init]) {
        // 默认有4类命令类型
        NSMutableArray *mOnArr = [[NSMutableArray alloc] init];
        NSMutableArray *mOffArr = [[NSMutableArray alloc] init];
        for (int i = 0; i < 4; ++i) {
            [mOnArr addObject:[[DefaultCommand alloc] init]];
            [mOffArr addObject:[[DefaultCommand alloc] init]];
        }
        self.onCommands = mOnArr.copy;
        self.offCommands = mOnArr.copy;
        self.completeCommandsArr = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)onClickWithIdx:(NSInteger)idx {
    if (idx >= self.onCommands.count || idx < 0) {
        return;
    }
    
    [self.onCommands[idx] execute];
    self.undoCommand = self.onCommands[idx];
    [self.completeCommandsArr addObject:self.onCommands[idx]];
}

- (void)offClickWithIdx:(NSInteger)idx {
    if (idx >= self.offCommands.count || idx < 0) {
        return;
    }
    
    [self.offCommands[idx] execute];
    self.undoCommand = self.offCommands[idx];
    [self.completeCommandsArr addObject:self.offCommands[idx]];
}

- (void)undoAction {
    [self.undoCommand undo];
    [self.completeCommandsArr removeObject:self.undoCommand];
}

- (void)undoAllAction {
    [self.completeCommandsArr enumerateObjectsWithOptions:NSEnumerationReverse usingBlock:^(id<CommandInterface>  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [obj undo];
    }];
    
    [self.completeCommandsArr removeAllObjects];
}

- (void)setCommandWithIdx:(NSInteger)idx
                onCommand:(id<CommandInterface>)onCommand
               offCommand:(id<CommandInterface>)offCommand {
    if (idx < 0 || idx >= self.onCommands.count) {
        return;
    }
    
    if (idx < 0 || idx >= self.offCommands.count) {
        return;
    }
    
    NSMutableArray *mOnCommands = [self.onCommands mutableCopy];
    [mOnCommands replaceObjectAtIndex:idx withObject:onCommand];
    self.onCommands = mOnCommands;
    
    NSMutableArray *mOffCommands = [self.offCommands mutableCopy];
    [mOffCommands replaceObjectAtIndex:idx withObject:offCommand];
    self.offCommands = mOffCommands;
}

@end
