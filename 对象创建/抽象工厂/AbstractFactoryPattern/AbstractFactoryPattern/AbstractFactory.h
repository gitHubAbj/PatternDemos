//
//  AbstractFactory.h
//  AbstractFactoryPattern
//
//  Created by Abj on 2019/3/31.
//  Copyright © 2019 Abj. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface AbstractFactory : NSObject

+ (UITableViewCell *)cellWithText:(NSString *)text;
+ (UITableViewCell *)cellWithImage:(UIImage *)img;

@end

NS_ASSUME_NONNULL_END
