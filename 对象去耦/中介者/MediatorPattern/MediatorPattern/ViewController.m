//
//  ViewController.m
//  MediatorPattern
//
//  Created by Abj on 2019/4/18.
//  Copyright © 2019 Abj. All rights reserved.
//  参考:https://www.cnblogs.com/madpanda/p/4678100.html

#import "ViewController.h"
#import "Mediator.h"
#import "ColleagueA.h"
#import "ColleagueB.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Mediator *mediator = [[Mediator alloc] init];
    ColleagueA *caA = [[ColleagueA alloc] initWithMediator:mediator];
    ColleagueB *caB = [[ColleagueB alloc] initWithMediator:mediator];
    
    mediator.collA = caA;
    mediator.collB = caB;
    
    [caA notifyAnother];
    [caB notifyAnother];
    
    /*
     2019-04-18 23:27:55.290764+0800 MediatorPattern[86780:1876003] B Notified
     2019-04-18 23:27:55.290933+0800 MediatorPattern[86780:1876003] A Notified
     */
}


@end
