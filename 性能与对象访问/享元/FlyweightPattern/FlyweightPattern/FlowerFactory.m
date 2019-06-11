//
//  FlowerFactory.m
//  FlyweightPattern
//
//  Created by Abj on 2019/4/22.
//  Copyright © 2019 Abj. All rights reserved.
//

#import "FlowerFactory.h"
#import "FlowerView.h"

@interface FlowerFactory ()

@property (nonatomic, strong) NSMutableDictionary *flowerPool;

@end

@implementation FlowerFactory

- (UIView *)flowerViewWithType:(FlowerType)type {
    UIView *flowerView = [_flowerPool objectForKey:@(type)];
    if (flowerView) {
        return flowerView;
    }
    
    NSString *imgName;
    switch (type) {
        case kAnemone:
            imgName = @"anemone";
            break;
        case kCosmos:
            imgName = @"cosmos";
            break;
        case kGerberas:
            imgName = @"gerberas";
            break;
        case kHollyhock:
            imgName = @"hollyhock";
            break;
        case kJasmine:
            imgName = @"jasmine";
            break;
        case kZinnia:
            imgName = @"zinnia";
            break;
        default:
            break;
    }
    
    UIImage *img = [UIImage imageNamed:imgName];
    if (!img) {
        return nil;
    }
    
    FlowerView *tmpView = [[FlowerView alloc] init];
    tmpView.image = img;
    [self.flowerPool setObject:tmpView forKey:@(type)];
    return tmpView;
}

- (NSMutableDictionary *)flowerPool {
    if (!_flowerPool) {
        NSMutableDictionary *mDic = [[NSMutableDictionary alloc] initWithCapacity:kTotalNumberOfFlowTypes];
        
        _flowerPool = mDic;
    }
    return _flowerPool;
}

@end
