//
//  ViewController.m
//  CommandPattern
//
//  Created by Abj on 2019/4/11.
//  Copyright © 2019 Abj. All rights reserved.
//  参考:https://juejin.im/post/5844c329ac502e006ba97570#heading-10

#import "ViewController.h"
#import "RemoteLoader.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
 
    RemoteControl *rc = [[RemoteControl alloc] init];
    RemoteLoader *loader = [[RemoteLoader alloc] initWithRemoteControl:rc];
    [loader.rc onClickWithIdx:0];
    [loader.rc onClickWithIdx:1];
    [loader.rc offClickWithIdx:0];
    [loader.rc offClickWithIdx:1];
    
    NSLog(@"------------执行撤销动作------------");
    [loader.rc undoAction];
    [loader.rc undoAllAction];
}


@end
