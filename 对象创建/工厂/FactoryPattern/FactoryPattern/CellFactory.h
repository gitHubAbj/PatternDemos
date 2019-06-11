//
//  CellFactory.h
//  FactoryPattern
//
//  Created by Abj on 2018/12/16.
//  Copyright © 2018 Abj. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class LabelTableViewCell;
@class ImageTableViewCell;
@class SwitchTableViewCell;

NS_ASSUME_NONNULL_BEGIN

@interface CellFactory : NSObject

+ (UITableViewCell *)cellWithText:(NSString *)text;
+ (UITableViewCell *)cellWithImage:(UIImage *)img;
+ (UITableViewCell *)cellWithSelect:(BOOL)isSelect;

@end

NS_ASSUME_NONNULL_END
