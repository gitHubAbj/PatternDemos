//
//  Person.m
//  ObserverPattern
//
//  Created by Abj on 2019/3/29.
//  Copyright © 2019 Abj. All rights reserved.
//

#import "Person.h"

NSNotificationName const PersonNameWillChangeNotification = @"PersonNameWillChangeNotification";

@implementation Person

- (void)setName:(NSString *)name {
    _name = name;
    
    // 发送通知
    [[NSNotificationCenter defaultCenter] postNotificationName:PersonNameWillChangeNotification object:_name];
}

@end
