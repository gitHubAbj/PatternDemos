//
//  ViewController.m
//  VisitorPattern
//
//  Created by Abj on 2019/4/27.
//  Copyright © 2019 Abj. All rights reserved.
//  参考:https://segmentfault.com/a/1190000011434841#articleHeader0

#import "ViewController.h"
#import "Dot.h"
#import "Vertex.h"
#import "Stroke.h"
#import "CanvasView.h"

@interface ViewController ()

@property (nonatomic, strong) id<Mark> parentMark;
@property (nonatomic, strong) CanvasView *canvasView;
@property (nonatomic, assign) CGPoint startPoint;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.parentMark = [[Stroke alloc] init];
    [self setupView];
}

- (void)setupView
{
    CanvasView *canvasView = [[CanvasView alloc] initWithFrame:self.view.frame];
    canvasView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:canvasView];
    self.canvasView = canvasView;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    self.startPoint = [[touches anyObject] locationInView:self.canvasView];
}

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    CGPoint lastPoint = [[touches anyObject] previousLocationInView:self.canvasView];
    if (CGPointEqualToPoint(lastPoint, self.startPoint)) {
        id <Mark> newStroke = [[Stroke alloc] init];
        [self addMark:newStroke shouldAddToPreviousMark:NO];
    }
    
    CGPoint currentPoint  = [[touches anyObject] locationInView:self.canvasView];
    Vertex *vertex = [[Vertex alloc] init];
    vertex.location = currentPoint;
    [self addMark:vertex shouldAddToPreviousMark:vertex];
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    CGPoint lastPoint = [[touches anyObject] previousLocationInView:self.canvasView];
    CGPoint currentPoint = [[touches anyObject] locationInView:self.canvasView];
    if (CGPointEqualToPoint(lastPoint, currentPoint))
    {
        Dot *singleDot = [[Dot alloc] init];
        singleDot.location = currentPoint;
        [self addMark:singleDot shouldAddToPreviousMark:NO];
    }
    self.startPoint = CGPointZero;
}

- (void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    self.startPoint = CGPointZero;
}

- (void)addMark:(id<Mark>)mark shouldAddToPreviousMark:(BOOL)shouldAddToPreviousMark
{
    if (shouldAddToPreviousMark) {
        [self.parentMark.lastChild addMark:mark];
    } else {
        [self.parentMark addMark:mark];
    }
    
    self.canvasView.mark = self.parentMark;
}

@end
