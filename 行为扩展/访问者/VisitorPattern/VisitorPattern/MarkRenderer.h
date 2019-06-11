//
//  MarkRenderer.h
//  VisitorPattern
//
//  Created by Abj on 2019/4/27.
//  Copyright © 2019 Abj. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MarkVisitor.h"

NS_ASSUME_NONNULL_BEGIN

// 具体的访问者，MarkRenderer绘制访问者，它是对这些点和先进行绘制操作的
@interface MarkRenderer : NSObject<MarkVisitor>

- (instancetype)initWithCGContext:(CGContextRef)context;

@end

NS_ASSUME_NONNULL_END
