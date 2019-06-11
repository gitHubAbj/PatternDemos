//
//  IteratorProtocol.h
//  IteratorPattern
//
//  Created by Abj on 2019/4/7.
//  Copyright © 2019 Abj. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol IteratorProtocol <NSObject>

- (id)nextObject;

@end

NS_ASSUME_NONNULL_END
