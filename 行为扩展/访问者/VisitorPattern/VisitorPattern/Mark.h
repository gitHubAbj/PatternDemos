//
//  Mark.h
//  VisitorPattern
//
//  Created by Abj on 2019/4/27.
//  Copyright © 2019 Abj. All rights reserved.
//


#import <UIKit/UIKit.h>
#import "MarkVisitor.h"

NS_ASSUME_NONNULL_BEGIN

// 不论线条还是点，其实都是在介质上留下的标志(Mark)，它为所有具体类定义了属性和方法
@protocol Mark <NSObject>

@property (nonatomic, assign) CGPoint location;
@property (nonatomic, assign) CGSize size;
@property (nonatomic, strong) id<Mark> lastChild;

- (void)addMark:(id<Mark>)mark;
- (void)removeMark:(id<Mark>)mark;

- (void)acceptMarkVisitor:(id<MarkVisitor>)visitor;

@end

NS_ASSUME_NONNULL_END
