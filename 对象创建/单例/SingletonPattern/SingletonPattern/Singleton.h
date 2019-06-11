//
//  Singleton.h
//  SingletonPattern
//
//  Created by Abj on 2019/4/8.
//  Copyright © 2019 Abj. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Singleton : NSObject

/// 统一的接口
+ (instancetype)defaultSingleton;

@end

NS_ASSUME_NONNULL_END
