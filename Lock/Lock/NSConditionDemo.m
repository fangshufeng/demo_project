//
//  NSConditionDemo.m
//  Lock
//
//  Created by fangshufeng on 2019/1/3.
//  Copyright © 2019 fangshufeng. All rights reserved.
//

#import "NSConditionDemo.h"

@interface NSConditionDemo ()

@property (strong, nonatomic)  NSCondition *condition;
@property (nonatomic, strong) NSMutableArray *list;

@end

@implementation NSConditionDemo

- (instancetype)init {
    if (self = [super init]) {
        self.condition = [[NSCondition alloc] init];
        self.list = [NSMutableArray array];
    }
    return self;
}

- (void)otherTest {
    
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        [self __delete];
    });
    
    sleep(3);
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        [self __add];
    });
    
    
}

- (void)__add {
    
    [self.condition lock];
    [self.list addObject:@"add"];
    [self.condition signal];
    [self.condition unlock];
}

- (void)__delete {
    [self.condition lock];
    NSLog(@"___%s_start",__func__);
    if (self.list.count == 0) {
        [self.condition wait];
    }
    [self.list removeLastObject];
    NSLog(@"___%s_end",__func__);
    [self.condition unlock];
}

- (void)reduceCount {
    
}

@end
