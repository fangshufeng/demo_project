//
//  Father.m
//  BaseOcSyntaxDemo
//
//  Created by fangshufeng on 2019/3/15.
//  Copyright © 2019 fangshufeng. All rights reserved.
//

#import "Father.h"
#import <objc/runtime.h>

@implementation Father

- (Class)class {
    return object_getClass(self);
}


@end
