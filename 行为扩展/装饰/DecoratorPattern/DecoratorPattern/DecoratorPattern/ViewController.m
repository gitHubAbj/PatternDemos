//
//  ViewController.m
//  DecoratorPattern
//
//  Created by Abj on 2019/1/28.
//  Copyright © 2019 Abj. All rights reserved.
//

#import "ViewController.h"
#import "ImageTransformFilter.h"
#import "ImageShadowFilter.h"
#import "DecoratorView.h"
#import "UIImage+Transform.h"
#import "UIImage+Shadow.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIImage *img = [UIImage imageNamed:@"13.jpeg"];
    CGAffineTransform rotateTransform = CGAffineTransformMakeRotation(-M_PI / 4.0);
    CGAffineTransform translateTransform = CGAffineTransformMakeTranslation(-img.size.width / 2.0, img.size.height / 8.0);
    CGAffineTransform finalTransform = CGAffineTransformConcat(rotateTransform, translateTransform);
    
    UIImage *transformedImage = [img imageWithTransform:finalTransform];
    UIImage *finalImage = [transformedImage imageWithDropShadow];
//    id<ImageComponent>transformedImage = [[ImageTransformFilter alloc] initWithImageComponent:img transform:finalTransform];
//    id<ImageComponent>finalImage = [[ImageShadowFilter alloc] initWithImageComponent:transformedImage];
    
    
    DecoratorView *decoratorView = [[DecoratorView alloc] initWithFrame:self.view.bounds];
    [decoratorView setImage:(UIImage *)finalImage];
    [self.view addSubview:decoratorView];
}


@end
