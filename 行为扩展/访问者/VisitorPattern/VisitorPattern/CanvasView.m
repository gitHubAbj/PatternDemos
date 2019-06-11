//
//  CanvasView.m
//  VisitorPattern
//
//  Created by Abj on 2019/4/27.
//  Copyright © 2019 Abj. All rights reserved.
//

#import "CanvasView.h"
#import "MarkRenderer.h"
#import "Mark.h"

@implementation CanvasView

- (void)setMark:(id<Mark>)mark {
    _mark = mark;
    
    [self setNeedsDisplay];
}

- (void)drawRect:(CGRect)rect {
    CGContextRef context = UIGraphicsGetCurrentContext();
    MarkRenderer *markRender = [[MarkRenderer alloc] initWithCGContext:context];
    [self.mark acceptMarkVisitor:markRender];
}

@end
