//
//  Student.h
//  PrototypePattern
//
//  Created by Abj on 2019/2/17.
//  Copyright © 2019 Abj. All rights reserved.
//

#import "Person.h"
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface Student : Person

@property (nonatomic, copy) NSString *address;
@property (nonatomic, assign) CGSize size;
@property (nonatomic, strong) Person *teacher;
@property (nonatomic, strong) NSArray *friends;
@property (nonatomic, strong) NSMutableArray *girlfriends;
@property (nonatomic, strong) NSArray *other;

@end

NS_ASSUME_NONNULL_END
