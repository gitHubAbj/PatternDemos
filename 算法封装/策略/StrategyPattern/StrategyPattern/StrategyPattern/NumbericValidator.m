//
//  NumbericValidator.m
//  StrategyPattern
//
//  Created by Abj on 2018/12/25.
//  Copyright © 2018 Abj. All rights reserved.
//

#import "NumbericValidator.h"

@implementation NumbericValidator

- (BOOL)validateString:(NSString *)str error:(NSError *__autoreleasing  _Nullable *)error {
    NSError *regError = nil;
    NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:@"^[0-9]*$" options:NSRegularExpressionAnchorsMatchLines error:&regError];
    NSUInteger numberOfMatchs = [regex numberOfMatchesInString:str options:NSMatchingAnchored range:NSMakeRange(0, str.length)];
    if (numberOfMatchs == 0) {
        if (error != nil) {
            NSString *description = NSLocalizedString(@"Failed", @"");
            NSString *reason = NSLocalizedString(@"can contain only numberical", @"");
            NSArray *objArray = [NSArray arrayWithObjects:description, reason, nil];
            NSArray *keyArray = [NSArray arrayWithObjects:NSLocalizedDescriptionKey, NSLocalizedFailureReasonErrorKey, nil];
            NSDictionary *userInfo = [NSDictionary dictionaryWithObjects:objArray forKeys:keyArray];
            *error = [NSError errorWithDomain:@"StringErrorDomain" code:1001 userInfo:userInfo];
        }
        return NO;
    }
    return YES;
}

@end
