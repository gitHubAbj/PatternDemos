//
//  MarkVisitor.h
//  VisitorPattern
//
//  Created by Abj on 2019/4/27.
//  Copyright © 2019 Abj. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol Mark;
@class Dot;
@class Stroke;
@class Vertex;

NS_ASSUME_NONNULL_BEGIN

// 访问者接口
@protocol MarkVisitor <NSObject>

- (void)visitMark:(id<Mark>)mark;
- (void)visitVertex:(Vertex *)vertex;
- (void)visitDot:(Dot *)dot;
- (void)visitStroke:(Stroke *)stroke;

@end

NS_ASSUME_NONNULL_END
