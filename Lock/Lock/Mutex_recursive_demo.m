//
//  Mutex_recursive_demo.m
//  Lock
//
//  Created by fangshufeng on 2018/12/27.
//  Copyright © 2018 fangshufeng. All rights reserved.
//

#import "Mutex_recursive_demo.h"
#import <pthread.h>

@interface Mutex_recursive_demo ()

@property (nonatomic,assign) pthread_mutex_t lock;

@end

@implementation Mutex_recursive_demo

- (instancetype)init {
    if (self = [super init]) {

        pthread_mutexattr_t att ;
        pthread_mutexattr_init(&att);
        pthread_mutexattr_settype(&att, PTHREAD_MUTEX_DEFAULT);
        
        pthread_mutex_init(&_lock, &att);
        
        //销毁pthread_mutexattr_t
        pthread_mutexattr_destroy(&att);
        
        
    }
    return self;
}

- (void)otherTest {
    
    pthread_mutex_lock(&_lock);
    NSLog(@"--otherTest--");
    [self otherTest];
    pthread_mutex_unlock(&_lock);
}

- (void)reduceCount {

}


- (void)dealloc {
    pthread_mutex_destroy(&_lock);
}

@end
