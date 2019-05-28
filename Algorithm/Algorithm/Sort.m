//
//  Sort.m
//  Algorithm
//
//  Created by fangshufeng on 2019/3/7.
//  Copyright © 2019 fangshufeng. All rights reserved.
//

#import "Sort.h"

@implementation Sort

#pragma mark -bubbleSort

+ (void)bubbleSort:(NSMutableArray *)sortArr {
    
    NSUInteger length = sortArr.count;
    
    for (NSUInteger i = 0 ; i < length; i++) {
    
        for (NSUInteger j = length - 1; j > i; j--) {
            
            if ([sortArr[j - 1] integerValue]> [sortArr[j] integerValue]) {
                NSNumber *tmp = sortArr[j];
                sortArr[j] = sortArr[j - 1];
                sortArr[j - 1] = tmp;
            }
        }
        
    }
}


#pragma mark - selectionSort - begin

+ (void)selectionSort:(NSMutableArray *)sortArr {
    
    // 1、递归法
    [self __scanItemThenExchange:sortArr fromIndex:0];
    
    // 2.迭代法
//    [self __iterationArr:sortArr];

}

+ (void)__scanItemThenExchange:(NSMutableArray *)sortArr fromIndex:(NSInteger)fromIndex {
    
    if (fromIndex == sortArr.count) {
        return;
    }
    
    NSInteger minIndex = fromIndex;
    for (NSInteger i = fromIndex; i < sortArr.count; i++) {
        
        if ([sortArr[i] integerValue] < [sortArr[minIndex] integerValue]) {
            minIndex = i;
        }
    }
    
    if (minIndex != fromIndex) {
        [self swapValue:sortArr fromIndex:(int)minIndex toIndex:(int)fromIndex];
    }
    
    fromIndex ++;
    [self __scanItemThenExchange:sortArr fromIndex:fromIndex];

}

+ (void)__iterationArr:(NSMutableArray *)sortArr {
    int minIndex  = 0;
    int beginIndex = 0;
    
    while (beginIndex < sortArr.count) {
        
        for (int i = beginIndex ; i < sortArr.count; i++) {
            if ([sortArr[i] intValue] < [sortArr[minIndex] intValue]) {
                minIndex = i;
            }
        }
        
        if (beginIndex != minIndex) {
            [self swapValue:sortArr fromIndex:beginIndex toIndex:minIndex];
        }
        
        beginIndex++;
        minIndex = beginIndex;
    }
}

#pragma mark - selectionSort - end

#pragma mark - quickSort

+ (void)quickSort:(NSMutableArray *)sortArr lowLoc:(int)lowLoc highLoc:(int)hightLoc {
    
    
    if (lowLoc >= hightLoc) {//如果数组长度为0或1时返回
        return ;
    }
    
    int i = lowLoc;
    int j = hightLoc;
    
    int key = [sortArr[i] intValue];
    
    while (i < j) {
        
        while (i < j && [sortArr[j] integerValue] >= key) {
            j--;
        }
        
        sortArr[i] = sortArr[j];
        
        
        while (i < j && [sortArr[i] integerValue] <= key) {
            i++;
        }
        sortArr[j] = sortArr[i];
        
    }
    
    sortArr[i] = @(key);
    
    [self quickSort:sortArr lowLoc:lowLoc highLoc:i-1];
    [self quickSort:sortArr lowLoc:i+1 highLoc:hightLoc];
    
}

#pragma mark - heapSort

+ (void)heapSort:(NSMutableArray *)sortArr {

    // 从第一个非叶子节点开始 计算公式 n / 2 - 1 a然后往前都是非叶子节点
    // 1. 构造大顶堆
    for (int i = (int)sortArr.count / 2 - 1; i >= 0; i--) {
        [self adjustHeapWithArray:sortArr sortIndex:i length:(int)sortArr.count];
    }

    NSLog(@"完成大顶堆---%@",sortArr);

    // 2. 将顶堆元素放到数组的末尾，剩下的元素重新构造大顶堆

    int num = (int)sortArr.count - 1;

    while (num > 0 ) {
    
        [self swapValue:sortArr fromIndex:0 toIndex:num];
        [self adjustHeapWithArray:sortArr sortIndex:0 length:num ];

        num -- ;
    }

};

+ (void)adjustHeapWithArray:(NSMutableArray *)arr sortIndex:(int)sortIndex length:(int)length {

//    /*没有左右子树直接返回 */
//    if (sortIndex * 2 + 1 >= length) {
//        return;
//    }
//
//    int currentNodeValue = [arr[sortIndex] intValue];
//    int leftNodeValue = [arr[sortIndex * 2 + 1] intValue];
//
//    /*没有右子树，和左子树交换后返回 */
//    if (sortIndex * 2 + 2 >= length  ) {
//        if (leftNodeValue > currentNodeValue) {
//            arr[sortIndex] = @(leftNodeValue);
//            arr[sortIndex * 2 + 1] = @(currentNodeValue);
//        }
//        return;
//    }
//
//    /*左右子树都有*/
//    int maxValue = currentNodeValue;
//
//    int rightNodeValue = [arr[sortIndex * 2 + 2] intValue];
//
//    if (currentNodeValue > leftNodeValue &&
//        currentNodeValue > rightNodeValue) {
//        return;
//    }
//
//    int exchangeIndex = sortIndex;
//
//    if (leftNodeValue >= rightNodeValue) {
//        maxValue = leftNodeValue;
//        exchangeIndex = sortIndex * 2 + 1;
//    }
//
//    if (leftNodeValue < rightNodeValue) {
//        maxValue = rightNodeValue;
//        exchangeIndex = sortIndex * 2 + 2;
//    }
//
//    arr[sortIndex] = @(maxValue);
//    arr[exchangeIndex] = @(currentNodeValue); // 因为左子树的节点有修改，应该需要更新
//
//    sortIndex = exchangeIndex;
//
//    [self adjustHeapWithArray:arr sortIndex:sortIndex length:length];

    // 计算左右子树的索引
    int leftIndex = sortIndex * 2 + 1;
    int rightIndex = sortIndex * 2 + 2;
    
    // 默认当前的节点为最大值索引
    int maxIndex = sortIndex;
    
    // 如果左子树存在 并且大于 当前节点 改变最大的索引值
    if (leftIndex < length && [arr[leftIndex] intValue] > [arr[sortIndex] intValue]) {
        maxIndex = leftIndex;
    }
    
    // 如果右子树存在 并且大于最大索引的节点 改变最大的索引值
    if (rightIndex < length && [arr[rightIndex] intValue] > [arr[maxIndex] intValue]) {
        maxIndex = rightIndex;
    }
    
    // 如果当前的最大值不是传进来的节点索引，那么需要交换索引值对应的值，然后重新调整被调整的索引
    if (maxIndex != sortIndex) {
        [self swapValue:arr fromIndex:maxIndex toIndex:sortIndex];
        [self adjustHeapWithArray:arr sortIndex:maxIndex length:length];
    }
    
}

+ (void )swapValue:(NSMutableArray *)sortArr fromIndex:(int)fromIndex toIndex:(int)toIndex {

    NSNumber *tmp  = sortArr[fromIndex];
    sortArr[fromIndex ] = sortArr[toIndex];
    sortArr[toIndex] = tmp;
}

@end
