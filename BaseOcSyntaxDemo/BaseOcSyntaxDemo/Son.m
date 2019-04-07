//
//  Son.m
//  BaseOcSyntaxDemo
//
//  Created by fangshufeng on 2019/3/15.
//  Copyright © 2019 fangshufeng. All rights reserved.
//

#import "Son.h"
#import <objc/runtime.h>

@implementation Son


- (instancetype)init {
    if (self = [super init]) {
        NSLog(@"%@", NSStringFromClass([self class]));
        NSLog(@"%@", NSStringFromClass([super class]));
    }
    return self;
}

- (Class)class {
    return object_getClass(self);
}

@end
