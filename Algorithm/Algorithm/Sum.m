//
//  Sum.m
//  Algorithm
//
//  Created by fangshufeng on 2019/3/12.
//  Copyright © 2019 fangshufeng. All rights reserved.
//

#import "Sum.h"

@implementation Sum

+ (NSArray<NSNumber *> *)sumWithArr:(NSArray<NSNumber *> *)arr result:(int)result {
    
    NSArray *resultArr = nil;
    
    // 方法一：2层循环 时间复杂度O(n²) 空间复杂度O(1)
//    for (int i = 0 ; i < arr.count; i++) {
//
//        NSNumber *num1  = arr[i];
//
//        for (int j = i + 1 ; j < arr.count; j ++ ) {
//            NSNumber *num2  = arr[j];
//
//            if ([num1 intValue] + [num2 intValue] == result) {
//                resultArr = @[@(i),@(j)];
//                break;
//            }
//        }
//    }
    
    // 方法二： 使用hashamap来存储  时间复杂度O(n) 空间复杂度 O(n)  遍历数据2遍

//    NSMutableDictionary *dic = [NSMutableDictionary dictionary ];
//    for (int i = 0 ; i < arr.count; i++) {
//         NSNumber *num1  = arr[i];
//        [dic setObject:@(i) forKey:num1];
//    }
//
//
//    for (NSNumber *key in dic.allKeys) {
//        if ([[dic allKeys] containsObject:@(result - [key intValue])] &&
//            [dic[key] intValue] !=  [dic[@(result - [key intValue])] intValue]) {
//
//            resultArr = @[dic[key] ,dic[@(result - [key intValue])] ];
//        }
//    }
    
    
    // 方法三： 还是使用hashmap实现，但是对比方法二 只遍历了一遍数据， 时间复杂度为O(n),空间复杂度O(n)
    NSMutableDictionary *dic = [NSMutableDictionary dictionary];
    
    for (int i = 0 ; i < arr.count; i++) {
        NSNumber *num = arr[i];
        
        if ([[dic allKeys] containsObject:@(result - [num intValue])] ) {

            resultArr = @[dic[@(result - [num intValue])] , @(i)];
            break;
        }
        [dic setObject:@(i) forKey:num];
    }
    

    return resultArr;
}

+ (NSArray<NSNumber *> *)threeSumWithArr:(NSArray<NSNumber *> *)arr result:(int)result {
    
    NSMutableSet *resultArr = [NSMutableSet set];
    
    for (int i = 0; i < arr.count; i++) {
        NSNumber *num1 = arr[i];
        
        for (int j = i + 1 ; j < arr.count; j++) {
            NSNumber *num2 = arr[j];
            
            for (int k = j + 1 ; k < arr.count; k ++) {
                NSNumber *num3 = arr[k];
                
                if ([num1 intValue] + [num2 intValue] + [num3 intValue] == result) {
                    NSArray *tmp  = @[num1,num2,num3];
                    [resultArr addObject:tmp];
                }
            }
        }
    }
    
    
//    for (int  i = 0 ; i < arr.count; i++) {
//
//    }
//
//    NSArray *leftArr = nil;
//    NSArray *rightArr = nil;
//
//    resultArr = @[leftArr,rightArr];
    
    return resultArr;
}

@end
