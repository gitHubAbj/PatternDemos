//
//  Student.m
//  PrototypePattern
//
//  Created by Abj on 2019/2/17.
//  Copyright © 2019 Abj. All rights reserved.
//

#import "Student.h"

@implementation Student

- (id)copyWithZone:(NSZone *)zone {
    Student *s = [[[self class] allocWithZone:zone] init];
    s.name = self.name;
    s.age = self.age;
    s.address = self.address;
    s.size = self.size;
    s.teacher = [self.teacher copy];
    // copyItems:NO浅复制,YES深复制
    s.friends = [[NSArray alloc] initWithArray:self.friends copyItems:YES];
    s.girlfriends = [[NSMutableArray alloc] initWithArray:self.girlfriends.copy copyItems:YES];
    
    NSError *error;
    NSData *data = [NSKeyedArchiver archivedDataWithRootObject:self.other requiringSecureCoding:NO error:nil];
    s.other = (NSArray *)[NSKeyedUnarchiver unarchivedObjectOfClasses:[NSSet setWithObjects:[Person class], [NSArray class], nil] fromData:data error:&error];
    return s;
}

@end
