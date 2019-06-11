//
//  ViewController.m
//  IteratorPattern
//
//  Created by Abj on 2019/4/7.
//  Copyright © 2019 Abj. All rights reserved.
//  参考:https://www.jianshu.com/p/b5e9359ea59c

#import "ViewController.h"
#import "LinkedList.h"
#import "LinkedListIterator.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 系统迭代器
    NSArray *arr = @[@"A", @"B", @"C", @"D"];
    NSEnumerator *enumerator = [arr objectEnumerator];
    NSString *obj = nil;
    while ((obj = enumerator.nextObject)) {
        NSLog(@"%@", obj);
    }
    
    NSLog(@"------------------------------------");
    
    LinkedList *list = [[LinkedList alloc] init];
    [list addItem:@"A"];
    [list addItem:@"B"];
    [list addItem:@"C"];
    [list addItem:@"D"];
    
    LinkedListIterator *iterator = [LinkedListIterator linkedListIteratorWithLinkedList:list];
    Node *node;
    while ((node = iterator.nextObject)) {
        NSLog(@"%@", node.nodeName);
    }
}


@end
