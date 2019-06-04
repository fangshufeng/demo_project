//
//  Sort.h
//  Algorithm
//
//  Created by fangshufeng on 2019/3/7.
//  Copyright © 2019 fangshufeng. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Sort : NSObject


/**
 冒泡排序

 @param sortArr 排序的数组
 */
+ (void)bubbleSort:(NSMutableArray *)sortArr;


/**
 选择排序

 @param sortArr 需要排序的数组
 */
+ (void)selectionSort:(NSMutableArray *)sortArr;


/**
 插入排序

 @param sortArr 需要排序的数组
 */
+ (void)insertionSort:(NSMutableArray *)sortArr;

/**
 快速排序

 @param sortArr 排序数组 可变
 @param lowLoc 开始位置
 @param hightLoc 结束位置
 */
+ (void)quickSort:(NSMutableArray *)sortArr lowLoc:(int)lowLoc highLoc:(int)hightLoc;

/**
 堆排序

 @param sortArr 需要排序的数组 
 */
+ (void)heapSort:(NSMutableArray *)sortArr;

@end

NS_ASSUME_NONNULL_END
