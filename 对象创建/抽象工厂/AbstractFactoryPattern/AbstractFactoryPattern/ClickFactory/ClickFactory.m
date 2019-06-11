//
//  ClickFactory.m
//  AbstractFactoryPattern
//
//  Created by Abj on 2019/3/31.
//  Copyright © 2019 Abj. All rights reserved.
//

#import "ClickFactory.h"

@implementation ClickFactory

+ (UITableViewCell *)cellWithText:(NSString *)text {
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:nil];
    cell.textLabel.text = text;
    cell.textLabel.userInteractionEnabled = YES;
    return cell;
}

+ (UITableViewCell *)cellWithImage:(UIImage *)img {
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
    cell.imageView.image = img;
    cell.imageView.userInteractionEnabled = YES;
    return cell;
}

@end
