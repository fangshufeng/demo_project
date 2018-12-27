//
//  MutexDemo.m
//  Lock
//
//  Created by fangshufeng on 2018/12/27.
//  Copyright © 2018 fangshufeng. All rights reserved.
//

#import "MutexDemo.h"
#import <pthread.h>

@interface MutexDemo ()

@property (nonatomic,assign) pthread_mutex_t lock;

@end

@implementation MutexDemo

- (instancetype)init {
    if (self = [super init]) {
        // 直接初始化
        pthread_mutex_init(&_lock, NULL);
    }
    return self;
}

- (void)reduceCount {
    pthread_mutex_lock(&_lock);
    [super reduceCount];
    pthread_mutex_unlock(&_lock);
}


- (void)dealloc {
    pthread_mutex_destroy(&_lock);
}

@end
