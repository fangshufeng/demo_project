//
//  ViewController.m
//  Runloop
//
//  Created by fangshufeng on 2018/12/19.
//  Copyright © 2018 fangshufeng. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

void runloopActivity(CFRunLoopObserverRef observer, CFRunLoopActivity activity, void *info) {
    switch (activity) {
        case kCFRunLoopEntry:
            NSLog(@"kCFRunLoopEntry");
            break;
            
        case kCFRunLoopBeforeTimers:
            NSLog(@"kCFRunLoopBeforeTimers");
            break;
            
        case kCFRunLoopBeforeSources:
            NSLog(@"kCFRunLoopBeforeSources");
            break;
            
        case kCFRunLoopBeforeWaiting:
            NSLog(@"kCFRunLoopBeforeWaiting");
            break;
            
        case kCFRunLoopAfterWaiting:
            NSLog(@"kCFRunLoopAfterWaiting");
            break;
            
        case kCFRunLoopExit:
            NSLog(@"kCFRunLoopExit");
            break;
            
        default:
            break;
    }
};

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CFRunLoopObserverRef ob =   CFRunLoopObserverCreate(kCFAllocatorDefault, kCFRunLoopAllActivities, YES, 0, runloopActivity, nil);
    CFRunLoopAddObserver(CFRunLoopGetCurrent(), ob, kCFRunLoopCommonModes);
    CFRelease(ob);
    
//    NSLog(@"loop---%@",[NSRunLoop currentRunLoop]);
//
    NSTimer *timer =   [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(startTimer) userInfo:nil repeats:YES];
    [[NSRunLoop currentRunLoop] addTimer:timer forMode:NSRunLoopCommonModes];
//    NSLog(@"after--loop---%@",[NSRunLoop currentRunLoop]);
    
    
  
    
}

- (void)startTimer {
    NSLog(@"dasd");
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    NSLog(@"---点击事件");
}

@end
