//
//  Caretaker.m
//  MementoPattern
//
//  Created by Abj on 2019/4/1.
//  Copyright © 2019 Abj. All rights reserved.
//

#import "Caretaker.h"
#import "Memento.h"

@interface Caretaker ()

@property (nonatomic, strong) Memento *memento;

@end

@implementation Caretaker

- (void)archiveMemento:(Memento *)memento {
    self.memento = memento;
}

- (Memento *)getMemento {
    return self.memento;
}

@end
