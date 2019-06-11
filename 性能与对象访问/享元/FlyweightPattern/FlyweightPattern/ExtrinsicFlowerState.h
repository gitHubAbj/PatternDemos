//
//  ExtrinsicFlowerState.h
//  FlyweightPattern
//
//  Created by Abj on 2019/4/22.
//  Copyright © 2019 Abj. All rights reserved.
//
/**
 享元对象总是和某种可共享的内在状态联系在一起，尽管并不完全如此，但是我们的FlowerView享元对象确实共享了作为其内在状态的内部花朵图案。不管享元对象是否有可供共享的内在状态，仍然需要定义某种外部的数据结构，保存享元对象的外在状态。
 
 每朵花都有各自的显示区域，所以这需要作为外在状态来处理。
 */

#ifndef ExtrinsicFlowerState_h
#define ExtrinsicFlowerState_h

struct ExtrinsicFlowerState {
    __unsafe_unretained UIView *flowerView;
    CGRect area;
};

#endif /* ExtrinsicFlowerState_h */
