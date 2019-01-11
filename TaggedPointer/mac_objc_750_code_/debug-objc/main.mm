//
//  main.m
//  debug-objc
//
//  Created by Closure on 2018/12/4.
//

#import <Foundation/Foundation.h>
#import "fake_objc.h"
#import "Person.h"
#import <objc/runtime.h>
#import <malloc/malloc.h>

extern uintptr_t objc_debug_taggedpointer_obfuscator;

uintptr_t _objc_decodeTaggedPointer_(id  ptr) {
    NSString *p = [NSString stringWithFormat:@"%ld",ptr];
    return [p longLongValue] ^ objc_debug_taggedpointer_obfuscator;
}


int main(int argc, const char * argv[]) {
    @autoreleasepool {
    
        // mac 数字
//        NSNumber *number1 = @1;
//        NSNumber *number2 = @2;
//        NSNumber *number3 = @3;
//        NSNumber *numberFFFF = @(0xFFFF);
//
//        NSLog(@"number1 pointer is %p---真实地址:==0x%lx", number1,_objc_decodeTaggedPointer_(number1));
//        NSLog(@"number2 pointer is %p---真实地址:==0x%lx", number2,_objc_decodeTaggedPointer_(number2));
//        NSLog(@"number3 pointer is %p---真实地址:==0x%lx", number3,_objc_decodeTaggedPointer_(number3));
//        NSLog(@"numberffff pointer is %p---真实地址:==0x%lx", numberFFFF,_objc_decodeTaggedPointer_(numberFFFF));
//
//
//        NSNumber *numberF13   = @(0xFFFFFFFFFFFFF);
//        NSNumber *numberF13_1 = @(0x1FFFFFFFFFFFFF);
//        NSNumber *numberF13_3 = @(0x3FFFFFFFFFFFFF);
//        NSNumber *numberF13_7 = @(0x7FFFFFFFFFFFFF);
//        NSNumber *numberF14   = @(0xFFFFFFFFFFFFFF);
//
//        NSLog(@"numberF13 pointer is %p---真实地址:==0x%lx", numberF13,_objc_decodeTaggedPointer_(numberF13));
//        NSLog(@"numberF13_1 pointer is %p---真实地址:==0x%lx", numberF13_1,_objc_decodeTaggedPointer_(numberF13_1));
//        NSLog(@"numberF13_3 pointer is %p---真实地址:==0x%lx", numberF13_3,_objc_decodeTaggedPointer_(numberF13_3));
//        NSLog(@"numberF13_7 pointer is %p---真实地址:==0x%lx", numberF13_7,_objc_decodeTaggedPointer_(numberF13_7));
//
//        NSLog(@"numberF14 pointer is %p---真实地址:==0x%lx", numberF14,_objc_decodeTaggedPointer_(numberF14));
        
        
        
//            NSMutableString *imutable = [NSMutableString string];
//            NSString *immutable;
//            char c = 'a';
//            do {
//                [imutable appendFormat: @"%c", c++];
//                immutable = [imutable copy];
//                NSLog(@"源地址：%p 真实地址：0x%lx %@ %@", immutable,_objc_decodeTaggedPointer_(immutable), immutable, object_getClass(immutable));
//            } while(((uintptr_t)immutable & 1) == 1);

        
//        NSString *str = [NSString stringWithFormat:@"acdefghijk"];
//        NSString *str2 = [NSString stringWithFormat:@"acdefghijkm"];
//        NSString *str3 = [NSString stringWithFormat:@"acdefghijkmn"];
//
//        NSLog(@"源地址：%p 真实地址：0x%lx %@ %@", str,_objc_decodeTaggedPointer_(str), str, object_getClass(str));
//        NSLog(@"源地址：%p 真实地址：0x%lx %@ %@", str2,_objc_decodeTaggedPointer_(str2), str2, object_getClass(str2));
//        NSLog(@"源地址：%p 真实地址：0x%lx %@ %@", str3,_objc_decodeTaggedPointer_(str3), str3, object_getClass(str3));
        
  
//        NSString *notAscii_1 = [NSString stringWithFormat:@"方"];
//
//        NSLog(@"源地址：%p  %@ %@", notAscii_1,notAscii_1, object_getClass(notAscii_1));
        
        
        NSString *notAscii_1 = [NSString stringWithFormat:@"<?=,["];

        NSLog(@"源地址：%p  %@ %@", notAscii_1,notAscii_1, object_getClass(notAscii_1));

    }
    return 0;
}
