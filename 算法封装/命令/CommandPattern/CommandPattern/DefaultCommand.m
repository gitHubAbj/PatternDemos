
//
//  DefaultCommand.m
//  CommandPattern
//
//  Created by Abj on 2019/4/11.
//  Copyright © 2019 Abj. All rights reserved.
//

#import "DefaultCommand.h"

@implementation DefaultCommand

- (void)execute {
    NSLog(@"默认命令状态下");
}

- (void)undo {
    NSLog(@"默认撤销");
}

@end
