//
//  NSConditionLockDemo.m
//  Lock
//
//  Created by fangshufeng on 2019/1/3.
//  Copyright © 2019 fangshufeng. All rights reserved.
//

#import "NSConditionLockDemo.h"

@interface NSConditionLockDemo ()

@property (nonatomic, strong) NSConditionLock *conditionLock;

@end

@implementation NSConditionLockDemo

- (instancetype)init {
    if (self = [super init]) {
        self.conditionLock = [[NSConditionLock alloc] initWithCondition:1];
    }
    
    return self;
}

- (void)otherTest {
    
    dispatch_queue_t queue = dispatch_queue_create("test", DISPATCH_QUEUE_CONCURRENT);
    
    dispatch_async(queue, ^{
        [self __one];
    });
    
    
    sleep(3);
    
    dispatch_async(queue, ^{
        [self __two];
    });
    
    // 需求:先输出---two--- 再输出---one---
}

- (void)__one {
    [self.conditionLock lockWhenCondition:2];
    NSLog(@"---one---");
    [self.conditionLock unlockWithCondition:3];
}

- (void)__two {
    [self.conditionLock lockWhenCondition:1];
    NSLog(@"---two---");
    [self.conditionLock unlockWithCondition:2];
}

@end
