//
//  ViewController.m
//  TemplatePattern
//
//  Created by Abj on 2019/2/24.
//  Copyright © 2019 Abj. All rights reserved.
//

#import "ViewController.h"
#import "ReubenSandwich.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    ReubenSandwich *sandwich = [[ReubenSandwich alloc] init];
    [sandwich make];
}


@end
