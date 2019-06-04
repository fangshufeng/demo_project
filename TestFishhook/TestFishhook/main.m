//
//  main.m
//  TestFishhook
//
//  Created by fangshufeng on 2019/3/21.
//  Copyright © 2019 fangshufeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#include <mach-o/dyld.h>
#import "fishhook.h"

static int (*orig_strlen)(const char *__s);
int my_strlen(const char *__s) {
    printf("===\n");
    return orig_strlen(__s);
}

//static int (*orig_foo)(void);
//
//int foo() {
//    printf("___%s__\n",__func__);
//    return 0;
//}
//
//int my_foo() {
//    printf("my_foo");
//   return  orig_foo();
//}


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
//        char *str = "HelloWorld";
//        printf("%d\n",strlen(str));
        

//        struct rebinding strlen_rebinding = { "foo", my_foo,
//            (void *)&orig_foo };
//
//        rebind_symbols((struct rebinding[1]){ strlen_rebinding }, 1);
//
//        foo();
//
//        char *s = "ssssss";
//        strlen(s);
//        strlen(s);

        char *s = "ssssss";
        strlen(s);
        struct rebinding strlen_rebinding = { "strlen", my_strlen,
            (void *)&orig_strlen };

        rebind_symbols((struct rebinding[1]){ strlen_rebinding }, 1);

        char *str = "HelloWorld";
        printf("%d\n",strlen(str));
        
        ;
//        strlen(str);

        
        CGAffineTransformScale(<#CGAffineTransform t#>, <#CGFloat sx#>, <#CGFloat sy#>)
        
    }
    return 0;
}


