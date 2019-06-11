//
//  CommandInterface.h
//  CommandPattern
//
//  Created by Abj on 2019/4/11.
//  Copyright © 2019 Abj. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/// 命令对象的公共接口（按钮执行的动作）
@protocol CommandInterface <NSObject>

/// 执行命令
- (void)execute;

/// 撤销
- (void)undo;

@end

NS_ASSUME_NONNULL_END
