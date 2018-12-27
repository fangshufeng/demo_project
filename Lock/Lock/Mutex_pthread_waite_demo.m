//
//  Mutex_pthread_waite_demo.m
//  Lock
//
//  Created by fangshufeng on 2018/12/27.
//  Copyright © 2018 fangshufeng. All rights reserved.
//

#import "Mutex_pthread_waite_demo.h"
#import <pthread.h>

@interface Mutex_pthread_waite_demo ()

@property (nonatomic, assign) pthread_mutex_t lock;
@property (nonatomic, assign) pthread_cond_t  cond ;

@property (nonatomic, strong) NSMutableArray *list;

@end

@implementation Mutex_pthread_waite_demo

- (instancetype)init {
    if (self = [super init]) {
        
        pthread_mutexattr_t att ;
        pthread_mutexattr_init(&att);
        pthread_mutexattr_settype(&att, PTHREAD_MUTEX_RECURSIVE);
        
        pthread_mutex_init(&_lock, &att);
        
        pthread_cond_init(&_cond, NULL);

        //销毁pthread_mutexattr_t
        pthread_mutexattr_destroy(&att);
        
        

    }
    return self;
}

- (void)otherTest {

    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        [self __delete];
    });
    
    sleep(3);
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        [self __add];
    });

    
}

- (void)__add {
    
    pthread_mutex_lock(&_lock);
    [self.list addObject:@"add"];
    pthread_cond_signal(&_cond);
    pthread_mutex_unlock(&_lock);
}

- (void)__delete {
    pthread_mutex_lock(&_lock);
    NSLog(@"___%s_start",__func__);
    if (self.list.count == 0) {
        pthread_cond_wait(&_cond, &_lock);
    }
    [self.list removeLastObject];
    NSLog(@"___%s_end",__func__);
    pthread_mutex_unlock(&_lock);
}

- (void)reduceCount {
    
}


- (void)dealloc {
    pthread_cond_destroy(&_cond);
    pthread_mutex_destroy(&_lock);
    
}

@end
