//
//  ViewController.m
//  MementoPattern
//
//  Created by Abj on 2019/4/1.
//  Copyright © 2019 Abj. All rights reserved.
//

#import "ViewController.h"
#import "Originator.h"
#import "Memento.h"
#import "Caretaker.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Originator *oriAtor = [[Originator alloc] init];
    oriAtor.name = @"sansa";
    oriAtor.age = 18;
    NSLog(@"1 --- %@", oriAtor);
    
    // 保存十八岁的样子
    Caretaker *taker = [[Caretaker alloc] init];
    [taker archiveMemento:[oriAtor createMemento]];
    
    // 过了好多年
    oriAtor.age = 78;
    NSLog(@"2 --- %@", oriAtor);
    
    // 吃了药剂,重返十八岁
    [oriAtor setMemento:[taker getMemento]];
    NSLog(@"3 --- %@", oriAtor);
}


@end
