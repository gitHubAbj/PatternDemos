//
//  Caretaker.h
//  MementoPattern
//
//  Created by Abj on 2019/4/1.
//  Copyright © 2019 Abj. All rights reserved.
//  看管者

#import <Foundation/Foundation.h>

@class Memento;

NS_ASSUME_NONNULL_BEGIN

@interface Caretaker : NSObject

- (void)archiveMemento:(Memento *)memento;
- (Memento *)getMemento;

@end

NS_ASSUME_NONNULL_END
