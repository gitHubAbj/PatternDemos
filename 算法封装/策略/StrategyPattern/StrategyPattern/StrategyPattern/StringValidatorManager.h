//
//  StringValidatorManager.h
//  StrategyPattern
//
//  Created by Abj on 2018/12/25.
//  Copyright © 2018 Abj. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface StringValidatorManager : NSObject

+ (BOOL)numbervalidString:(NSString *)str error:(NSError **)error;
+ (BOOL)alphaString:(NSString *)str error:(NSError **)error;

@end

NS_ASSUME_NONNULL_END
