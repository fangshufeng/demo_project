//
//  OSUnfairLockDemo.m
//  Lock
//
//  Created by fangshufeng on 2018/12/27.
//  Copyright © 2018 fangshufeng. All rights reserved.
//

#import "OSUnfairLockDemo.h"
#import <os/lock.h>

@interface OSUnfairLockDemo ()

@property (nonatomic, assign) os_unfair_lock lock;

@end

@implementation OSUnfairLockDemo

- (instancetype)init {
    if (self = [super init]) {
        self.lock = OS_UNFAIR_LOCK_INIT;
    }
    return self;
}

- (void)reduceCount {
    
    os_unfair_lock_lock(&_lock);
    [super reduceCount];
    os_unfair_lock_unlock(&_lock);
}

@end
