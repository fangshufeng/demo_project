//
//  main.m
//  debug-objc
//
//  Created by Closure on 2018/12/4.
//

#import <Foundation/Foundation.h>
#import "fake_objc.h"
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        Person *p =[[Person alloc] init];
        
        unsigned long a = (unsigned long)@selector(test1);
        NSLog(@"---%ld",a);
        [p test1];
        
        objc_class;
        
        fake_objc_class *tmp = (__bridge fake_objc_class *)[p class];
        
        [p test1];
        
    }
    return 0;
}
