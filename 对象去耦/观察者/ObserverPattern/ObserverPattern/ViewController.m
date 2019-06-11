//
//  ViewController.m
//  ObserverPattern
//
//  Created by Abj on 2019/3/29.
//  Copyright © 2019 Abj. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"

@interface ViewController ()

@property (nonatomic, strong) Person *xiaoming;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    _xiaoming = [[Person alloc] init];
    _xiaoming.name = @"xiaoming";
    _xiaoming.age = 11;
    
    // 通知更换了名字
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(changePersonName:) name:PersonNameWillChangeNotification object:nil];

    // 监听xiaoming年龄变化
    [self.xiaoming addObserver:self forKeyPath:@"age" options:NSKeyValueObservingOptionNew context:nil];
    
    _xiaoming.name = @"wangxiaoming";
    _xiaoming.age = 28;
    
    // 移除相关监听
    [[NSNotificationCenter defaultCenter] removeObserver:self name:PersonNameWillChangeNotification object:nil];
    [self.xiaoming removeObserver:self forKeyPath:@"age"];
}

- (void)changePersonName:(NSNotification *)noti {
    NSLog(@"newName = %@", noti.object);
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context {
    NSLog(@"newAge = %ld", [change[NSKeyValueChangeNewKey] integerValue]);
}


@end
