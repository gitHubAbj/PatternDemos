//
//  ViewController.m
//  PrototypePattern
//
//  Created by Abj on 2019/2/17.
//  Copyright © 2019 Abj. All rights reserved.
//  参考http://ibloodline.com/articles/2016/09/05/prototype.html

#import "ViewController.h"
#import "Person.h"
#import "Student.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Person *p1 = [[Person alloc] init];
    p1.name = @"xiaoming";
    p1.age = 12;
    
    Person *p2 = [p1 copy];
    NSLog(@"%@", [NSString stringWithFormat:@"%@, name = %@, age = %ld", p1, p1.name, p1.age]);
    NSLog(@"%@", [NSString stringWithFormat:@"%@, name = %@, age = %ld", p2, p2.name, p2.age]);
 
    Student *s1 = [[Student alloc] init];
    s1.age = 18;
    s1.name = @"s1";
    s1.address = @"adress";
    s1.size = CGSizeMake(100, 100);
    s1.teacher = p1;
    s1.friends = @[p1, p2];
    s1.girlfriends = [[NSMutableArray alloc] initWithArray:s1.friends];
    s1.other = @[s1.friends, s1.girlfriends];
    
    Student *s2 = [s1 copy];
    
    NSLog(@"%@", [NSString stringWithFormat:@"%@, name = %@, age = %ld, adress = %@, size = %@, tearcher = %@, friend = %@, girdfriends = %@, other = %@", s1, s1.name, s1.age, s1.address, NSStringFromCGSize(s1.size), s1.teacher, s1.friends, s1.friends, s1.other]);
    NSLog(@"%@", [NSString stringWithFormat:@"%@, name = %@, age = %ld, adress = %@, size = %@ tearcher = %@, friend = %@, girdfriends = %@, other = %@", s2, s2.name, s2.age, s2.address, NSStringFromCGSize(s2.size), s2.teacher, s2.friends, s2.friends, s2.other]);
}


@end
