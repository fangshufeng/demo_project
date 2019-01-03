//
//  NSLockDemo.m
//  Lock
//
//  Created by fangshufeng on 2019/1/3.
//  Copyright © 2019 fangshufeng. All rights reserved.
//

#import "NSLockDemo.h"

@interface  NSLockDemo ()

@property (strong, nonatomic) NSLock *lock;

@end

@implementation NSLockDemo

- (instancetype)init {
    if (self = [super init]) {
        self.lock = [[NSLock alloc] init];
    }
    return self;
}

- (void)reduceCount {
    [self.lock lock];
    [super reduceCount];
    [self.lock unlock];
}

@end
