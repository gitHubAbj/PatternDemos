//
//  Vertex.h
//  VisitorPattern
//
//  Created by Abj on 2019/4/27.
//  Copyright © 2019 Abj. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Mark.h"

NS_ASSUME_NONNULL_BEGIN

// 顶点，连接起来的一串顶点，被绘制成连接起来的线条
@interface Vertex : NSObject<Mark>

@end

NS_ASSUME_NONNULL_END
