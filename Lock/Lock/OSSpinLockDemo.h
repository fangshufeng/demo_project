//
//  OSSpinLockDemo.h
//  Lock
//
//  Created by fangshufeng on 2018/12/26.
//  Copyright © 2018 fangshufeng. All rights reserved.
//

#import "NoLockCode.h"

NS_ASSUME_NONNULL_BEGIN

/**
 * 自旋锁
 * 特点： 忙等 （类似while操作，占用CPU资源） 汇编代码如下
 
 libsystem_platform.dylib`_OSSpinLockLockSlow:
 0x104ba98a5 <+0>:  movl   $0xfffffc18, %ecx         ; imm = 0xFFFFFC18
 0x104ba98aa <+5>:  movl   $0xffffffff, %edx         ; imm = 0xFFFFFFFF
 0x104ba98af <+10>: jmp    0x104ba98c2               ; <+29>
 
 // ------循环
 0x104ba98b1 <+12>: cmpl   $-0x1, %eax
 0x104ba98b4 <+15>: jne    0x104ba98d1               ; <+44>
 0x104ba98b6 <+17>: testl  %ecx, %ecx
 0x104ba98b8 <+19>: je     0x104bab0f9               ; _OSSpinLockLockYield
 0x104ba98be <+25>: pause
 0x104ba98c0 <+27>: incl   %ecx
 0x104ba98c2 <+29>: movl   (%rdi), %eax
 0x104ba98c4 <+31>: testl  %eax, %eax
 0x104ba98c6 <+33>: jne    0x104ba98b1               ; <+12>
 0x104ba98c8 <+35>: xorl   %eax, %eax
 0x104ba98ca <+37>: lock
 0x104ba98cb <+38>: cmpxchgl %edx, (%rdi)
 0x104ba98ce <+41>: jne    0x104ba98b1               ; <+12>
 // ------循环
 
 0x104ba98d0 <+43>: retq
 0x104ba98d1 <+44>: pushq  %rbp
 0x104ba98d2 <+45>: movq   %rsp, %rbp
 0x104ba98d5 <+48>: movslq %eax, %rsi
 0x104ba98d8 <+51>: callq  0x104bab0df               ; _os_lock_corruption_abort
 
 
 * 优点：速度快 （如果是休眠的话，唤醒也是需要时间的）
 * 缺点：
    1.会出现优先级反转（对于优先级不同的线程，使用同一把锁访问共同资源，优先级低的线程先拿到锁，这时优先级高的线程过来后，由于锁被占用，但是优先级高，一直占有CPU资源，导致持有锁的低优先级的线程无法执行释放锁的操作，从而优先级高的线程一直处于忙等的状态）的问题，
    2.无法处理递归锁
 
 * iOS10以后系统提出使用os_unfair_lock替代OSSpinLock
 */
@interface OSSpinLockDemo : NoLockCode

@end

NS_ASSUME_NONNULL_END
