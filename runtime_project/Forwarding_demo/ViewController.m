//
//  ViewController.m
//  Forwarding_demo
//
//  Created by fangshufeng on 2018/12/24.
//

#import "ViewController.h"
#import "Foo.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    Foo *bar  = [[Foo alloc] init];
    
    [bar performSelector:@selector(test)];
}


@end
