//
//  ViewController.m
//  ChainOfResponsibilityPattern
//
//  Created by Abj on 2019/4/16.
//  Copyright © 2019 Abj. All rights reserved.
//  参考:https://github.com/YouXianMing/iOS-Design-Patterns/tree/master/ChainOfResponsibilityPattern

#import "ViewController.h"
#import "HeadChain.h"
#import "PhoneNumChain.h"
#import "EmailChain.h"
#import "UserNameChain.h"
#import "EndChain.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // 设置各请求链条
    HeadChain *headChain = [[HeadChain alloc] init];
    PhoneNumChain *phoneNumChain = [[PhoneNumChain alloc] init];
    EmailChain *emailChain = [[EmailChain alloc] init];
    UserNameChain *userNameChain = [[UserNameChain alloc] init];
    EndChain *endChain = [[EndChain alloc] init];
    
    // 设置下一链接点
    headChain.successor = phoneNumChain;
    phoneNumChain.successor = emailChain;
    emailChain.successor = userNameChain;
    userNameChain.successor = endChain;
    
    // 处理事件
    [headChain handlerRequest:@"18659007343"];
    [headChain handlerRequest:@"18659007343@qq.com"];
    [headChain handlerRequest:@"abc1865900"];
    [headChain handlerRequest:@"====="];
}




@end
