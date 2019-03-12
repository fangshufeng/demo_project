//
//  Sort.m
//  Algorithm
//
//  Created by fangshufeng on 2019/3/7.
//  Copyright © 2019 fangshufeng. All rights reserved.
//

#import "Sort.h"

@implementation Sort

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
