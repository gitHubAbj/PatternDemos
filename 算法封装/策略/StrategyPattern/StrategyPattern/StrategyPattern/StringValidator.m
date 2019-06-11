//
//  StringValidator.m
//  StrategyPattern
//
//  Created by Abj on 2018/12/25.
//  Copyright © 2018 Abj. All rights reserved.
//

#import "StringValidator.h"

@implementation StringValidator

- (BOOL)validateString:(NSString *)str error:(NSError * _Nullable __autoreleasing *)error {
    if (error) {
        *error = nil;
    }
    return NO;
}

@end
