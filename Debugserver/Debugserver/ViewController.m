//
//  ViewController.m
//  Debugserver
//
//  Created by fangshufeng on 2018/12/9.
//  Copyright © 2018 fangshufeng. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    UIButton *click = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    [click setTitle:@"点我啊" forState:UIControlStateNormal];
    [click setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [click addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:click];
}


- (void)btnClick {
    
    int a = 10;
    int b = 20;
    
    
}




@end
