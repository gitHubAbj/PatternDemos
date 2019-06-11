//
//  Singleton.m
//  SingletonPattern
//
//  Created by Abj on 2019/4/8.
//  Copyright © 2019 Abj. All rights reserved.
//

#import "Singleton.h"

static Singleton *_singleton;

@implementation Singleton

+ (instancetype)defaultSingleton {
    return [[self alloc] init];
}

- (instancetype)init {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _singleton = [super init];
    });
    return _singleton;
}

+ (instancetype)allocWithZone:(struct _NSZone *)zone {
    if (!_singleton) {
        static dispatch_once_t onceToken;
        dispatch_once(&onceToken, ^{
            _singleton = [super allocWithZone:zone];
        });
    }
    return _singleton;
}

- (id)copy {
    return _singleton;
}

- (id)mutableCopy {
    return _singleton;
}

@end
