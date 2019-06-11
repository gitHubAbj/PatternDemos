//
//  Person.h
//  PrototypePattern
//
//  Created by Abj on 2019/2/17.
//  Copyright © 2019 Abj. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject<NSCopying, NSCoding, NSSecureCoding>

@property (nonatomic, copy) NSString *name;
@property (nonatomic, assign) NSInteger age;

@end

NS_ASSUME_NONNULL_END
