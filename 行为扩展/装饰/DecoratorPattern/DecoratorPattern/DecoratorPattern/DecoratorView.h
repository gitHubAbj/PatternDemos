//
//  DecoratorView.h
//  DecoratorPattern
//
//  Created by Abj on 2019/1/28.
//  Copyright © 2019 Abj. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ImageComponent.h"

NS_ASSUME_NONNULL_BEGIN

@interface DecoratorView : UIView
{
    @private
    UIImage *image_;
}

@property (nonatomic, strong) UIImage *image;

@end

NS_ASSUME_NONNULL_END
