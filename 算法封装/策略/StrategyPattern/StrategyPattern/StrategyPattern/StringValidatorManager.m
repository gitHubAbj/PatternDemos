//
//  StringValidatorManager.m
//  StrategyPattern
//
//  Created by Abj on 2018/12/25.
//  Copyright © 2018 Abj. All rights reserved.
//

#import "StringValidatorManager.h"
#import "NumbericValidator.h"
#import "AlphaValidator.h"

@implementation StringValidatorManager

+ (BOOL)numbervalidString:(NSString *)str error:(NSError * _Nullable __autoreleasing *)error {
    NumbericValidator *number = [[NumbericValidator alloc] init];
    return [number validateString:str error:error];
}

+ (BOOL)alphaString:(NSString *)str error:(NSError * _Nullable __autoreleasing *)error {
    AlphaValidator *alpha = [[AlphaValidator alloc] init];
    return [alpha validateString:str error:error];
}

@end
