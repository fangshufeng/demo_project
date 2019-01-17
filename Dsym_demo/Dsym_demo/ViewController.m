//
//  ViewController.m
//  Dsym_demo
//
//  Created by fangshufeng on 2019/1/16.
//  Copyright © 2019 fangshufeng. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self testFunc];
}

- (void)testFunc {
    NSLog(@"----%s",__func__);
    NSArray *a = @[];
    a[2];
}

@end
