//
//  OSSpinLockDemo.m
//  Lock
//
//  Created by fangshufeng on 2018/12/26.
//  Copyright © 2018 fangshufeng. All rights reserved.
//

#import "OSSpinLockDemo.h"

#import <libkern/OSAtomic.h>

@interface OSSpinLockDemo ()


@property (nonatomic, assign) OSSpinLock lock;

@end

@implementation OSSpinLockDemo

- (instancetype)init {
    if (self = [super init]) {
        
        self.lock = OS_SPINLOCK_INIT;
        
        
    }
    return self;
}

- (void)reduceCount {
    
    OSSpinLockLock(&(_lock));
    [super reduceCount];
    OSSpinLockUnlock(&_lock);

}


@end
