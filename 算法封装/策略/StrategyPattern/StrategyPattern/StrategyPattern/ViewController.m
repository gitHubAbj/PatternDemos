//
//  ViewController.m
//  StrategyPattern
//
//  Created by Abj on 2018/12/25.
//  Copyright © 2018 Abj. All rights reserved.
//

#import "ViewController.h"
#import "StringValidatorManager.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    NSString *test1 = @"112";
    NSError *error0;
    [StringValidatorManager numbervalidString:test1 error:&error0];
    if (error0) {
        NSLog(@"0: %@", error0.localizedFailureReason);
    }
    
    NSError *error1;
    [StringValidatorManager alphaString:test1 error:&error1];
    if (error1) {
        NSLog(@"1: %@", error1.localizedFailureReason);
    }
    
    NSString *test2 = @"adsf";
    NSError *error2;
    [StringValidatorManager numbervalidString:test2 error:&error2];
    if (error2) {
        NSLog(@"2: %@", error2.localizedFailureReason);
    }
    
    NSError *error3;
    [StringValidatorManager alphaString:test2 error:&error3];
    if (error3) {
        NSLog(@"3: %@", error3.localizedFailureReason);
    }
}


@end
