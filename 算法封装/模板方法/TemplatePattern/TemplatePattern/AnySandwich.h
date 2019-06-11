//
//  AnySandwich.h
//  TemplatePattern
//
//  Created by Abj on 2019/2/24.
//  Copyright © 2019 Abj. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AnySandwich : NSObject

- (void)make;
- (void)prepareBread;
- (void)putBreadOnPlate;
- (void)addMeat;
- (void)addCondiments;
- (void)serve;
- (void)extraStep;

@end

NS_ASSUME_NONNULL_END
