//
//  NumbericValidator.h
//  StrategyPattern
//
//  Created by Abj on 2018/12/25.
//  Copyright © 2018 Abj. All rights reserved.
//

#import "StringValidator.h"

NS_ASSUME_NONNULL_BEGIN

@interface NumbericValidator : StringValidator

- (BOOL)validateString:(NSString *)str error:(NSError * _Nullable __autoreleasing *)error;

@end

NS_ASSUME_NONNULL_END
