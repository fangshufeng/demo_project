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
        // 1.直接初始化 是第二种方案的简写
//        pthread_mutex_init(&_lock, NULL);
        
        // 2.带参数的初始化
        pthread_mutexattr_t att ;
        /*
         * Mutex type attributes
         */
        //    #define PTHREAD_MUTEX_NORMAL        0  // 默认的
        //    #define PTHREAD_MUTEX_ERRORCHECK    1
        //    #define PTHREAD_MUTEX_RECURSIVE        2  //递归锁
        //    #define PTHREAD_MUTEX_DEFAULT        PTHREAD_MUTEX_NORMAL
        pthread_mutexattr_init(&att);
        pthread_mutexattr_settype(&att, PTHREAD_MUTEX_DEFAULT);
        
        pthread_mutex_init(&_lock, &att);
        
        //销毁pthread_mutexattr_t
        pthread_mutexattr_destroy(&att);
        
        
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
