//
//  OSUnfairLockDemo.h
//  Lock
//
//  Created by fangshufeng on 2018/12/27.
//  Copyright © 2018 fangshufeng. All rights reserved.
//

#import "NoLockCode.h"

NS_ASSUME_NONNULL_BEGIN

/*
 * 是互斥锁
 * 是OSSpinLock的替代品 线程等待的本质是调用了syscall（休眠）而不是忙等,汇编代码如下
 
 libsystem_kernel.dylib`__ulock_wait:
 0x10701f360 <+0>:  movl   $0x2000203, %eax          ; imm = 0x2000203
 0x10701f365 <+5>:  movq   %rcx, %r10
 
 0x10701f368 <+8>:  syscall
 
 0x10701f36a <+10>: jae    0x10701f374               ; <+20>
 0x10701f36c <+12>: movq   %rax, %rdi
 0x10701f36f <+15>: jmp    0x10701ce67               ; cerror_nocancel
 0x10701f374 <+20>: retq
 0x10701f375 <+21>: nop
 0x10701f376 <+22>: nop
 0x10701f377 <+23>: nop

 */
@interface OSUnfairLockDemo : NoLockCode

@end

NS_ASSUME_NONNULL_END
