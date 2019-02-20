//
//  ViewController.m
//  Inline_func
//
//  Created by fangshufeng on 2019/1/21.
//  Copyright © 2019 fangshufeng. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()


@end

@implementation ViewController

/*
 *
 0x1032dc961 <+41>: leaq   0x16f8(%rip), %rdi        ; @"----%d"
 0x1032dc968 <+48>: movl   $0x21, %esi
 0x1032dc96d <+53>: xorl   %eax, %eax
 0x1032dc96f <+55>: callq  0x1032dca48               ; symbol stub for: NSLog
 */
//static inline int sum(int a, int b) {
//
//
//    if (a < 10 ) {
//        a  = a + 100;
//    } else {
//        a  = a * 10 + b;
//    }
//
//    return a + b ;
//}

- (int)sum:(int)a b:(int)b {
//    if (a < 10 ) {
//        a  = a + 100;
//    } else {
//        a  = a * 10 + b;
//    }
//    
    return a + b ;
}

//int sum(int a, int b) {
//    return a + b ;
//}

- (void)viewDidLoad {
    [super viewDidLoad];
//   int a = sum(1,2);
   int a = [self sum:1 b:2];
    printf("----%d",a);
}

/**
 *
 
 pushq    %rbp
 movq    %rsp, %rbp
 subq    $48, %rsp
 leaq    -32(%rbp), %rax
 movq    %rdi, -8(%rbp)
 movq    %rsi, -16(%rbp)

 movq    -8(%rbp), %rsi
 movq    %rsi, -32(%rbp)
 movq    L_OBJC_CLASSLIST_SUP_REFS_$_(%rip), %rsi
 movq    %rsi, -24(%rbp)
 movq    L_OBJC_SELECTOR_REFERENCES_(%rip), %rsi
 movq    %rax, %rdi
 callq    _objc_msgSendSuper2
 movl    $1, %edi
 movl    $2, %esi
 .loc    2 36 12                 ## /Users/fangshufeng/Desktop/demo_project/Inline_func/Inline_func/ViewController.m:36:12
 callq    _sum
 leaq    L__unnamed_cfstring_(%rip), %rcx
 .loc    2 36 8 is_stmt 0        ## /Users/fangshufeng/Desktop/demo_project/Inline_func/Inline_func/ViewController.m:36:8
 movl    %eax, -36(%rbp)
 .loc    2 37 21 is_stmt 1       ## /Users/fangshufeng/Desktop/demo_project/Inline_func/Inline_func/ViewController.m:37:21
 movl    -36(%rbp), %esi
 .loc    2 37 5 is_stmt 0        ## /Users/fangshufeng/Desktop/demo_project/Inline_func/Inline_func/ViewController.m:37:5
 movq    %rcx, %rdi
 movb    $0, %al
 callq    _NSLog
 addq    $48, %rsp
 popq    %rbp
 retq
 Ltmp1:
 Lfunc_end0:
 
 */

@end
