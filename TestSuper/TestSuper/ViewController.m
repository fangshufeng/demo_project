//
//  ViewController.m
//  TestSuper
//
//  Created by fangshufeng on 2019/7/25.
//  Copyright © 2019 fangshufeng. All rights reserved.
//

#import "ViewController.h"
#import "Son.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    Son *son = [[Son alloc] init];
    [son foo:@"tom"];
}


@end
