//
//  SemaphoreDemo.m
//  Lock
//
//  Created by fangshufeng on 2019/1/5.
//  Copyright © 2019 fangshufeng. All rights reserved.
//

#import "SemaphoreDemo.h"


@interface SemaphoreDemo ()

@property (nonatomic, strong) dispatch_semaphore_t semaphore;

@end

@implementation SemaphoreDemo

- (instancetype)init {
    if (self= [super init]) {
    
        self.semaphore = dispatch_semaphore_create(1);
    }
    
    return self;
}

- (void)reduceCount {
    dispatch_semaphore_wait(self.semaphore, DISPATCH_TIME_FOREVER);
    [super  reduceCount];
    dispatch_semaphore_signal(self.semaphore);
}

@end
