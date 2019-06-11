//
//  Dot.h
//  VisitorPattern
//
//  Created by Abj on 2019/4/27.
//  Copyright © 2019 Abj. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Mark.h"

NS_ASSUME_NONNULL_BEGIN

// 点，组件只有一个点，那么它会表现为一个实心圆，在屏幕上代表一个点
@interface Dot : NSObject<Mark>

@end

NS_ASSUME_NONNULL_END
