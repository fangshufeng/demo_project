//
//  Son.m
//  Test
//
//  Created by fangshufeng on 2019/7/25.
//  Copyright © 2019 fangshufeng. All rights reserved.
//

#import "Son.h"
#import <objc/runtime.h>

@interface Person ()
- (void)foo:(NSString *)name;
@end

@implementation Son

- (void)foo:(NSString *)name {
    
    unsigned  count = 0;

    Method *methodList =  class_copyMethodList([self superclass], &count);

    BOOL superHasThisMethod = NO;
    for (int i = 0;  i < count; i++) {

        Method  method =  methodList[i];
        if ([NSStringFromSelector(method_getName(method)) isEqualToString:NSStringFromSelector(@selector(foo:))]) {
            superHasThisMethod = YES;
            break;
        }
    }
    free(methodList);
    
    if (superHasThisMethod) {
        [super foo:name];
    }
    
    NSLog(@"son--foo");
}


@end
