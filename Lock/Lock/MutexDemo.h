//
//  MutexDemo.h
//  Lock
//
//  Created by fangshufeng on 2018/12/27.
//  Copyright © 2018 fangshufeng. All rights reserved.
//

#import "NoLockCode.h"

NS_ASSUME_NONNULL_BEGIN

/**
 * 互斥锁
 *
 线程等待的函数调用如下:
 1、pthread_mutex_lock->
 2、_pthread_mutex_firstfit_lock_slow
 3、_pthread_mutex_firstfit_lock_wait
 4、__psynch_mutexwait
 
 libsystem_kernel.dylib`__psynch_mutexwait:
 0x10c5f1868 <+0>:  movl   $0x200012d, %eax          ; imm = 0x200012D
 0x10c5f186d <+5>:  movq   %rcx, %r10
 
 0x10c5f1870 <+8>:  syscall // 也是调用的这个系统调用，线程处于休眠状态
 
 0x10c5f1872 <+10>: jae    0x10c5f187c               ; <+20>
 0x10c5f1874 <+12>: movq   %rax, %rdi
 0x10c5f1877 <+15>: jmp    0x10c5eee67               ; cerror_nocancel
 0x10c5f187c <+20>
 */
@interface MutexDemo : NoLockCode

@end

NS_ASSUME_NONNULL_END
