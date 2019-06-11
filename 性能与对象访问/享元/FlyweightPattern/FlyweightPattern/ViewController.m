//
//  ViewController.m
//  FlyweightPattern
//
//  Created by Abj on 2019/4/22.
//  Copyright © 2019 Abj. All rights reserved.
//  参考:https://segmentfault.com/a/1190000012507640

#import "ViewController.h"
#import "FlowerContainerView.h"
#import "FlowerFactory.h"
#import "ExtrinsicFlowerState.h"

static NSInteger kFlowerListCount = 200;

@interface ViewController ()

@property (nonatomic, strong) FlowerFactory *flowerFactory;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    FlowerContainerView *containerView = [[FlowerContainerView alloc] initWithFrame:self.view.bounds];
    containerView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:containerView];
    
    _flowerFactory = [[FlowerFactory alloc] init];
    NSMutableArray *flowerList = [[NSMutableArray alloc] initWithCapacity:kFlowerListCount];
    
    for (int i = 0; i < kFlowerListCount; ++i) {
        // 从工厂取得一个共享的花朵享元对象实例
        FlowerType type = arc4random() % kTotalNumberOfFlowTypes;
        UIView *flowerView = [_flowerFactory flowerViewWithType:type];
        
        // 设置花朵显示的区域
        CGRect viewBounds = self.view.bounds;
        CGFloat x = arc4random() % (int)CGRectGetWidth(viewBounds);
        CGFloat y = arc4random() % (int)CGRectGetHeight(viewBounds);
        CGFloat minSize = 10;
        CGFloat maxSize = 60;
        CGFloat size = (arc4random() % (int)(maxSize - minSize)) + minSize;
        
        struct ExtrinsicFlowerState state;
        state.flowerView = flowerView;
        state.area = CGRectMake(x, y, size, size);
        
        [flowerList addObject:[NSValue value:&state withObjCType:@encode(struct ExtrinsicFlowerState)]];
    }
    
    [containerView setFlowerList:flowerList.copy];
}


@end
