//
//  QuickSort.m
//  Algorithm
//
//  Created by fangshufeng on 2019/3/7.
//  Copyright © 2019 fangshufeng. All rights reserved.
//

#import "QuickSort.h"

@implementation QuickSort

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

@end
