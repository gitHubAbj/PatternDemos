//
//  ViewController.m
//  FactoryPattern
//
//  Created by Abj on 2018/12/16.
//  Copyright © 2018 Abj. All rights reserved.
//

#import "ViewController.h"
#import "CellFactory.h"

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
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell;
    switch (indexPath.row % 3) {
        case 0:
            cell = [CellFactory cellWithText:[NSString stringWithFormat:@"%ld", indexPath.row]];
            break;
        case 1:
            cell = [CellFactory cellWithImage:[UIImage imageNamed:@"12.png"]];
            break;
        case 2:
            cell = [CellFactory cellWithSelect:indexPath.row % 4];
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
