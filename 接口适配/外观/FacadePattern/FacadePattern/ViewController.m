//
//  ViewController.m
//  FacadePattern
//
//  Created by Abj on 2019/2/25.
//  Copyright © 2019 Abj. All rights reserved.
//

#import "ViewController.h"
#import "CabDriver.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CabDriver *driver = [[CabDriver alloc] init];
    [driver driveToLocation:CGPointMake(10, 10)];
}


@end
