//
//  Person.h
//  ProxyPattern
//
//  Created by Abj on 2019/2/13.
//  Copyright © 2019 Abj. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SendGift.h"

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject

@property (nonatomic, weak) id<SendGift> delegate;

@end

NS_ASSUME_NONNULL_END
