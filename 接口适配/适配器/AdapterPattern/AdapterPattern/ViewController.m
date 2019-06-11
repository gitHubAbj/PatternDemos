//
//  ViewController.m
//  AdapterPattern
//
//  Created by Abj on 2019/3/31.
//  Copyright © 2019 Abj. All rights reserved.
//  参考http://ohcoder.com/blog/2012/12/01/adapter-pattern/

#import "ViewController.h"
#import "Target.h"
#import "Adapter.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Target *target = [[Adapter alloc] init];
    [target request];
}


@end
