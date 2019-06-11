//
//  CanvasView.h
//  VisitorPattern
//
//  Created by Abj on 2019/4/27.
//  Copyright © 2019 Abj. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol Mark;

NS_ASSUME_NONNULL_BEGIN

// 用于绘制的视图
@interface CanvasView : UIView

@property (nonatomic, strong) id<Mark> mark;

@end

NS_ASSUME_NONNULL_END
