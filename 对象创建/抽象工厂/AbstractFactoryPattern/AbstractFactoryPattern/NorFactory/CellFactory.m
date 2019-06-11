//
//  CellFactory.m
//  FactoryPattern
//
//  Created by Abj on 2018/12/16.
//  Copyright © 2018 Abj. All rights reserved.
//

#import "CellFactory.h"

@implementation CellFactory

+ (UITableViewCell *)cellWithText:(NSString *)text {
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:nil];
    cell.textLabel.text = text;
    return cell;
}

+ (UITableViewCell *)cellWithImage:(UIImage *)img {
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
    cell.imageView.image = img;
    return cell;
}

@end
