//
//  ViewController.m
//  Lock
//
//  Created by fangshufeng on 2018/12/26.
//  Copyright © 2018 fangshufeng. All rights reserved.
//

#import "ViewController.h"

#import "NoLockCode.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    NoLockCode *code = [[NoLockCode alloc] init];
    [code testCode];

}




@end
