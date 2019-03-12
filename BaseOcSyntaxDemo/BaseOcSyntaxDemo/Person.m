//
//  Person.m
//  BaseOcSyntaxDemo
//
//  Created by fangshufeng on 2019/3/8.
//  Copyright © 2019 fangshufeng. All rights reserved.
//

#import "Person.h"

@implementation Person

@synthesize name = name;
//
- (void)console {
    NSLog(@"%@",name);
//    NSLog(@"%@",_name);
}

@end
