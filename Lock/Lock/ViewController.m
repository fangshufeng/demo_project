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

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    NoLockCode *code = [[NSLockDemo alloc] init];
    [code testCode];
//    [code otherTest];
}


@end
