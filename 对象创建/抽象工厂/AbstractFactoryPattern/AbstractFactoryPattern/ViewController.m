//
//  ViewController.m
//  AbstractFactoryPattern
//
//  Created by Abj on 2019/3/31.
//  Copyright © 2019 Abj. All rights reserved.
//

#import "ViewController.h"
#import "CellFactory.h"
#import "ClickFactory.h"
#import "AbstractFactory.h"

@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UITableView *tbView = [[UITableView alloc] initWithFrame:self.view.bounds];
    tbView.delegate = self;
    tbView.dataSource = self;
    [self.view addSubview:tbView];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 4;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell;
    
    switch (indexPath.row % 2) {
        case 0:
            if (indexPath.row > 2) {
                cell = [ClickFactory cellWithText:[NSString stringWithFormat:@"%ld", indexPath.row]];
            } else {
                cell = [CellFactory cellWithText:[NSString stringWithFormat:@"%ld", indexPath.row]];
            }
            break;
        case 1:
            if (indexPath.row > 2) {
                cell = [ClickFactory cellWithImage:[UIImage imageNamed:@"12.png"]];
            } else {
                cell = [CellFactory cellWithImage:[UIImage imageNamed:@"12.png"]];
            }
            break;
        case 2:
            break;
        default:
            break;
    }
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 44.f;
}

@end
