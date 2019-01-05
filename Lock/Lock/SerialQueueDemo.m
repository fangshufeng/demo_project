//
//  SerialQueueDemo.m
//  Lock
//
//  Created by fangshufeng on 2019/1/5.
//  Copyright © 2019 fangshufeng. All rights reserved.
//

#import "SerialQueueDemo.h"

@interface SerialQueueDemo()

@property (nonatomic, strong) dispatch_queue_t  queue;

@end

@implementation SerialQueueDemo

- (instancetype)init {
    if (self = [super init]) {
        self.queue = dispatch_queue_create("test", DISPATCH_QUEUE_SERIAL);
    }
    return self;
}

- (void)reduceCount {
    
    dispatch_sync(self.queue, ^{
        [super reduceCount];
    });
    
}

@end
