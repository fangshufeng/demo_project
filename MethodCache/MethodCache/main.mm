//
//  main.m
//  MethodCache
//
//  Created by fangshufeng on 2018/12/21.
//  Copyright © 2018 fangshufeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "fake_objc.h"
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p = [[Person alloc] init];
        [p test1];
        
        fake_objc_class *pObject = (__bridge  fake_objc_class *) [p class];
        
        NSLog(@"-------");
    }
    return 0;
}
