//
//  ViewController.m
//  BuilderPattern
//
//  Created by Abj on 2019/3/27.
//  Copyright © 2019 Abj. All rights reserved.
//

#import "ViewController.h"
#import "SandwichDirector.h"
#import "SandwichConcreteBuilder.h"
#import "Sandwich.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    SandwichDirector *director = [[SandwichDirector alloc] init];
    SandwichConcreteBuilder *builder = [[SandwichConcreteBuilder alloc] init];
    [director setConcreteBuilder:builder];
    [director construct];
    
    Sandwich *sandwich = [builder getSandwich];
    NSLog(@"面包:%@\n肉:%@", sandwich.breadType, sandwich.meatType);
}


@end
