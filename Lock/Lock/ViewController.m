//
//  ViewController.m
//  Lock
//
//  Created by fangshufeng on 2018/12/26.
//  Copyright © 2018 fangshufeng. All rights reserved.
//

#import "ViewController.h"

#import "NoLockCode.h"
#import "OSSpinLockDemo.h"
#import "OSUnfairLockDemo.h"
#import "MutexDemo.h"
#import "Mutex_recursive_demo.h"
#import "Mutex_pthread_waite_demo.h"
#import "NSLockDemo.h"
#import "NSConditionDemo.h"
#import "NSConditionLockDemo.h"
#import "NSRecursiveLockDemo.h"
#import "SynchronizeDemo.h"
#import "SerialQueueDemo.h"
#import "SemaphoreDemo.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    NoLockCode *code = [[SemaphoreDemo alloc] init];
    [code testCode];
//    [code otherTest];
}


@end
