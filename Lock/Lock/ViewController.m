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

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    NoLockCode *code = [[OSSpinLockDemo alloc] init];
    [code testCode];


}




@end
