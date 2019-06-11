//
//  Person.m
//  PrototypePattern
//
//  Created by Abj on 2019/2/17.
//  Copyright © 2019 Abj. All rights reserved.
//

#import "Person.h"

@interface Person ()

@end

@implementation Person

- (id)copyWithZone:(NSZone *)zone {
    Person *person = [[[self class] allocWithZone:zone] init];
    person.name = self.name;
    person.age = self.age;
    return person;
}

+ (BOOL)supportsSecureCoding {
    return YES;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{
    [aCoder encodeObject:_name forKey:@"name"];
    [aCoder encodeObject:@(_age) forKey:@"age"];
    [aCoder encodeObject:@(YES) forKey:@"supportsSecureCoding"];
}

- (id)initWithCoder: (NSCoder *)aCoder {
    self = [super init];
    if (self) {
        _name = [aCoder decodeObjectForKey:@"name"];
        _age = [[aCoder decodeObjectForKey:@"age"] intValue];
    }
    return self;
}

@end
