//
//  SynchronizeDemo.m
//  Lock
//
//  Created by fangshufeng on 2019/1/4.
//  Copyright © 2019 fangshufeng. All rights reserved.
//

#import "SynchronizeDemo.h"

@implementation SynchronizeDemo

- (void)reduceCount {
    @synchronized (self) {
        [super reduceCount];
    }
}

@end
