//
//  MarkRenderer.m
//  VisitorPattern
//
//  Created by Abj on 2019/4/27.
//  Copyright © 2019 Abj. All rights reserved.
//

#import "MarkRenderer.h"
#import "Dot.h"
#import "Vertex.h"
#import "Stroke.h"

@interface MarkRenderer ()

@property (nonatomic, assign) CGContextRef context;
@property (nonatomic, assign) BOOL shouldMoveContextToDot;

@end

@implementation MarkRenderer

- (instancetype)initWithCGContext:(CGContextRef)context {
    if (self = [super init]) {
        self.context = context;
        self.shouldMoveContextToDot = YES;
    }
    return self;
}

- (void)visitMark:(id<Mark>)mark {
    
}

- (void)visitVertex:(Vertex *)vertex {
    CGFloat x = vertex.location.x;
    CGFloat y = vertex.location.y;
    if (self.shouldMoveContextToDot) {
        CGContextMoveToPoint(self.context, x, y);
        self.shouldMoveContextToDot = NO;
    } else {
        CGContextAddLineToPoint(self.context, x, y);
    }
}

- (void)visitDot:(Dot *)dot {
    CGFloat x = dot.location.x;
    CGFloat y = dot.location.y;
    CGRect frame = CGRectMake(x, y, 2, 2);
    
    CGContextSetFillColorWithColor(self.context, [[UIColor blackColor] CGColor]);
    CGContextFillEllipseInRect(self.context, frame);
}

- (void)visitStroke:(Stroke *)stroke {
    CGContextSetStrokeColorWithColor(self.context, [UIColor blueColor].CGColor);
    CGContextSetLineWidth(self.context, 1);
    CGContextSetLineCap(self.context, kCGLineCapRound);
    CGContextStrokePath(self.context);
    self.shouldMoveContextToDot = YES;
}

@end
