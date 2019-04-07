//
//  Person.m
//  BaseOcSyntaxDemo
//
//  Created by fangshufeng on 2019/3/8.
//  Copyright © 2019 fangshufeng. All rights reserved.
//

#import "Person.h"

@implementation Person

- (instancetype)init {
    if (self = [super init]) {
        printf("person-init\n");
    }
    return self;
}

- (void)dealloc {
    printf("Person dealloc\n");
}

+ (void)classFunction {
    NSLog(@"========");
}

@end
