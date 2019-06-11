//
//  ViewController.m
//  ProxyPattern
//
//  Created by Abj on 2019/2/13.
//  Copyright © 2019 Abj. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
#import "Doraemon.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Person *daxiong = [[Person alloc] init];
    Doraemon *doraemon = [[Doraemon alloc] init];
    // 哆啦A梦成为代理,替大熊送礼物
    daxiong.delegate = doraemon;
    [daxiong.delegate sendGift];
}


@end
