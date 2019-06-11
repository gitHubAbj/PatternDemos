//
//  ViewController.m
//  SingletonPattern
//
//  Created by Abj on 2019/4/8.
//  Copyright © 2019 Abj. All rights reserved.
//

#import "ViewController.h"
#import "Singleton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Singleton *sigleton0 = [[Singleton alloc] init];
    NSLog(@"%@", sigleton0);
    
    Singleton *sigleton1 = [Singleton defaultSingleton];
    NSLog(@"%@", sigleton1);
    
    NSLog(@"%@", [sigleton0 copy]);
    NSLog(@"%@", [sigleton1 mutableCopy]);
}


@end
