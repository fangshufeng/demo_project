//
//  LockCode.m
//  Lock
//
//  Created by fangshufeng on 2018/12/26.
//  Copyright © 2018 fangshufeng. All rights reserved.
//

#import "NoLockCode.h"

@interface NoLockCode ()

@property (nonatomic, assign) int totalCount;

@end

@implementation NoLockCode

- (void)testCode {
    self.totalCount = 15;
    dispatch_queue_t queue =
    dispatch_queue_create("com.test.concurrent", DISPATCH_QUEUE_CONCURRENT);
    
    for (int i = 0 ; i < 5; i++) {
        dispatch_async(queue, ^{
            [self reduceCount];
        });
    }

    for (int i = 0 ; i < 5; i++) {
        dispatch_async(queue, ^{
            [self reduceCount];
        });
    }

    for (int i = 0 ; i < 5; i++) {
        dispatch_async(queue, ^{
            [self reduceCount];
        });
    }
    
    /*
     * 如果程序正常的话应该最终的结果是0
     */
    
//    dispatch_async(queue, ^{
//        [self reduceCount];
//    });
//
//    sleep(10);
//
//    dispatch_async(queue, ^{
//        [self reduceCount];
//    });
//
}

- (void)reduceCount {
    
    int preCount = self.totalCount;
    sleep(0.2);
    self.totalCount = --preCount ;
    
    NSLog(@"---now value : %d---%@",self.totalCount,[NSThread currentThread]);
}

@end
