//
//  ReubenSandwich.h
//  BuilderPattern
//
//  Created by Abj on 2019/3/27.
//  Copyright © 2019 Abj. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Sandwich : NSObject

@property (nonatomic, copy) NSString *breadType;
@property (nonatomic, copy) NSString *meatType;

@end

NS_ASSUME_NONNULL_END
