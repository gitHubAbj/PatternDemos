//
//  ViewController.m
//  CompositePattern
//
//  Created by Abj on 2019/4/2.
//  Copyright © 2019 Abj. All rights reserved.
//  参考:https://www.cnblogs.com/zhanggui/p/4707056.html

#import "ViewController.h"
#import "Composite.h"
#import "Leaf.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Composite *root = [[Composite alloc] initWithName:@"root"];
    [root addComponent:[[Leaf alloc] initWithName:@"leaf-A"]];
    [root addComponent:[[Leaf alloc] initWithName:@"leaf-B"]];
   
    Composite *comp0 = [[Composite alloc] initWithName:@"comp0"];
    [comp0 addComponent:[[Leaf alloc] initWithName:@"comp0-A"]];
    [comp0 addComponent:[[Leaf alloc] initWithName:@"comp0-B"]];
    [root addComponent:comp0];
    
    Composite *comp1 = [[Composite alloc] initWithName:@"comp1"];
    [comp1 addComponent:[[Leaf alloc] initWithName:@"comp1-A"]];
    [comp1 addComponent:[[Leaf alloc] initWithName:@"comp1-B"]];
    [root addComponent:comp1];
    
    Composite *comp00 = [[Composite alloc] initWithName:@"comp00"];
    [comp00 addComponent:[[Leaf alloc] initWithName:@"comp00-A"]];
    [comp00 addComponent:[[Leaf alloc] initWithName:@"comp00-B"]];
    [comp0 addComponent:comp00];
    
    Leaf *leafC = [[Leaf alloc] initWithName:@"leaf-C"];
    [root addComponent:leafC];
    [root addComponent:[[Leaf alloc] initWithName:@"leaf-D"]];
    
    [root display:0];
    
    NSLog(@"-------- 删除leaf-C --------");

    // 删除leaf-C
    [root removeComponent:leafC];
    [root display:0];
    
    NSLog(@"-------- 删除comp0 --------");
    // 删除comp0
    [root removeComponent:comp0];
    [root display:0];
}


@end
