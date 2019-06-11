//
//  Car.h
//  FacadePattern
//
//  Created by Abj on 2019/2/25.
//  Copyright © 2019 Abj. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Car : NSObject

- (void)releaseBreaks;
- (void)changeGears;
- (void)pressAccelerator;
- (void)pressBreaks;
- (void)releaseAccelerator;

@end

NS_ASSUME_NONNULL_END
