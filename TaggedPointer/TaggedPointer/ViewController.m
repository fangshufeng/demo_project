//
//  ViewController.m
//  TaggedPointer
//
//  Created by fangshufeng on 2019/1/8.
//  Copyright © 2019 fangshufeng. All rights reserved.
//

#import "ViewController.h"


#if (TARGET_OS_OSX || TARGET_OS_IOSMAC) && __x86_64__ // mac
// 64-bit Mac - tag bit is LSB
#   define OBJC_MSB_TAGGED_POINTERS_ 0
#else
// Everything else - tag bit is MSB
#   define OBJC_MSB_TAGGED_POINTERS_ 1 // 模拟器 真机
#endif

//
//#if OBJC_MSB_TAGGED_POINTERS
//#   define _OBJC_TAG_MASK (1UL<<63)
//#   define _OBJC_TAG_INDEX_SHIFT 60
//#   define _OBJC_TAG_SLOT_SHIFT 60
//#   define _OBJC_TAG_PAYLOAD_LSHIFT 4
//#   define _OBJC_TAG_PAYLOAD_RSHIFT 4
//#   define _OBJC_TAG_EXT_MASK (0xfUL<<60)
//#   define _OBJC_TAG_EXT_INDEX_SHIFT 52
//#   define _OBJC_TAG_EXT_SLOT_SHIFT 52
//#   define _OBJC_TAG_EXT_PAYLOAD_LSHIFT 12
//#   define _OBJC_TAG_EXT_PAYLOAD_RSHIFT 12
//#else
//#   define _OBJC_TAG_MASK 1UL
//#   define _OBJC_TAG_INDEX_SHIFT 1
//#   define _OBJC_TAG_SLOT_SHIFT 0
//#   define _OBJC_TAG_PAYLOAD_LSHIFT 0
//#   define _OBJC_TAG_PAYLOAD_RSHIFT 4
//#   define _OBJC_TAG_EXT_MASK 0xfUL
//#   define _OBJC_TAG_EXT_INDEX_SHIFT 4
//#   define _OBJC_TAG_EXT_SLOT_SHIFT 4
//#   define _OBJC_TAG_EXT_PAYLOAD_LSHIFT 0
//#   define _OBJC_TAG_EXT_PAYLOAD_RSHIFT 12
//#endif
#import <malloc/malloc.h>
#import <objc/runtime.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    NSLog(@"==%d",OBJC_MSB_TAGGED_POINTERS_);
//
//    // 字符串
//    NSString *a = [NSString stringWithFormat:@"abcdefghih"];
//    NSLog(@"-point--%p--%@",a,[a class]);//0x22038A01169585    ios://0xA0022038A011695 8
////    [a length];
//    [a characterAtIndex:2];
//
////    NSNumber *number2 = @2;//breakpoint set -n "-[__NSCFNumber intValue]"
////    NSLog(@"number2 pointer is %p", number2);//0x227
////    [number2 intValue];
//
    NSNumber *number2 = @238612371912312327;
    NSLog(@"number2 pointer is %p---%@", number2,[number2 class]);//0x227
    //        [number2 intValue];

    
    NSLog(@"%zd--%zd",class_getInstanceSize([NSNumber class]),sizeof([NSNumber class]));
    NSLog(@"%zd",malloc_size( (__bridge const void *)(number2)));
}


@end
