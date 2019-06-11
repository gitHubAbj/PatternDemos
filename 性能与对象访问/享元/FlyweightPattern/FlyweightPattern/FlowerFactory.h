//
//  FlowerFactory.h
//  FlyweightPattern
//
//  Created by Abj on 2019/4/22.
//  Copyright © 2019 Abj. All rights reserved.
/**
 UIView是任何需要在屏幕上绘图的最高抽象。FlowerFactory可以返回任何UIView子类对象,而不会破坏系统。这就是针对接口编程，而不是针对实现编程的好处。
 FlowerFactory
 FlowerFactory用flowerPool聚合了一个花朵池的引用。flowerPool是一个保存FlowerView的所有实例的数据结构。
 FlowerFactory通过flowerViewWithType: 方法返回FlowerView实例。
*/

#import <UIKit/UIKit.h>

static NSInteger kTotalNumberOfFlowTypes = 7;

typedef NS_ENUM(NSInteger, FlowerType) {
    kAnemone = 0,
    kCosmos,
    kGerberas,
    kHollyhock,
    kJasmine,
    kZinnia
};

NS_ASSUME_NONNULL_BEGIN

@interface FlowerFactory : NSObject

- (UIView *)flowerViewWithType:(FlowerType)type;

@end

NS_ASSUME_NONNULL_END
