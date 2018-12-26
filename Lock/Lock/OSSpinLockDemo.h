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
 * 特点： 忙等 （类似while操作，占用CPU资源）
 * 优点：速度快 （如果是休眠的话，唤醒也是需要时间的）
 * 缺点：会出现优先级反转（对于优先级不同的线程，使用同一把锁访问共同资源，优先级低的线程先拿到锁，这时优先级高的线程过来后，由于锁被占用，但是优先级高，一直占有CPU资源，导致持有锁的低优先级的线程无法执行释放锁的操作，从而优先级高的线程一直处于忙等的状态）的问题，
 * iOS10以后系统提出使用os_unfair_lock替代OSSpinLock
 */
@interface OSSpinLockDemo : NoLockCode

@end

NS_ASSUME_NONNULL_END
