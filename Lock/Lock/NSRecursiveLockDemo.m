//
//  NSRecursiveLockDemo.m
//  Lock
//
//  Created by fangshufeng on 2019/1/3.
//  Copyright © 2019 fangshufeng. All rights reserved.
//

#import "NSRecursiveLockDemo.h"

@interface NSRecursiveLockDemo ()

@property (nonatomic, strong) NSRecursiveLock *recursiveLock;

@end

@implementation NSRecursiveLockDemo

- (instancetype)init {
    if (self = [super init]) {
        self.recursiveLock = [[NSRecursiveLock alloc] init];
    }
    return self;
}

- (void)otherTest {
    
    [self.recursiveLock lock];
    NSLog(@"--otherTest--");
    [self otherTest];
    [self.recursiveLock unlock];
}

@end
