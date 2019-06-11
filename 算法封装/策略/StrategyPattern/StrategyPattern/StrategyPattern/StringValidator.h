//
//  StringValidator.h
//  StrategyPattern
//
//  Created by Abj on 2018/12/25.
//  Copyright © 2018 Abj. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface StringValidator : NSObject

- (BOOL)validateString:(NSString *)str error:(NSError **)error;

@end

NS_ASSUME_NONNULL_END
