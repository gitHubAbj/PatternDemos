//
//  Stroke.h
//  VisitorPattern
//
//  Created by Abj on 2019/4/27.
//  Copyright © 2019 Abj. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Mark.h"

NS_ASSUME_NONNULL_BEGIN

// 线条，一个线条实体，包含了若干的Vertex子节点
@interface Stroke : NSObject<Mark>

@end

NS_ASSUME_NONNULL_END
