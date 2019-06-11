//
//  CellFactory.m
//  FactoryPattern
//
//  Created by Abj on 2018/12/16.
//  Copyright © 2018 Abj. All rights reserved.
//

#import "CellFactory.h"
#import "LabelTableViewCell.h"
#import "ImageTableViewCell.h"
#import "SwitchTableViewCell.h"

@implementation CellFactory

+ (UITableViewCell *)cellWithText:(NSString *)text {
    LabelTableViewCell *cell = [[LabelTableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:nil];
    cell.textLabel.text = text;
    return cell;
}

+ (UITableViewCell *)cellWithImage:(UIImage *)img {
    ImageTableViewCell *cell = [[ImageTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
    cell.imageView.image = img;
    return cell;
}

+ (UITableViewCell *)cellWithSelect:(BOOL)isSelect {
    SwitchTableViewCell *cell = [[SwitchTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
    [cell setSwitchSelect:isSelect];
    return cell;
}

@end
