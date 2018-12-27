//
//  Mutex_pthread_waite_demo.h
//  Lock
//
//  Created by fangshufeng on 2018/12/27.
//  Copyright © 2018 fangshufeng. All rights reserved.
//

#import "NoLockCode.h"

NS_ASSUME_NONNULL_BEGIN

/**
 * 需求：
 *  一个数组
 *  2个线程 1个线程添加数据，另一条线程减少数据
 
 * 条件锁
 * 可以用在线程间的依赖，某个线程需要另外线程某个操作完成再执行任务，其余时间处于等待
 *
 */

@interface Mutex_pthread_waite_demo : NoLockCode

@end

NS_ASSUME_NONNULL_END
