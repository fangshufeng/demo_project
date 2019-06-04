//
//  main.m
//  Algorithm
//
//  Created by fangshufeng on 2019/3/7.
//  Copyright © 2019 fangshufeng. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Sort.h"
#import "Sum.h"

void testQuckSort () {
    NSMutableArray *arr = [[NSMutableArray alloc] initWithObjects:@57, @68,@59,@52,@72,@28,@96,@33,@24,nil];
    [Sort quickSort:arr lowLoc:0 highLoc:(int)arr.count - 1];
    
    NSLog(@"----%@",arr);
}

void testBubbleSort() {
    NSMutableArray *arr = [[NSMutableArray alloc] initWithObjects:@57, @68,@59,@52,@72,@28,@96,@33,@24,nil];
    [Sort bubbleSort:arr];
      NSLog(@"----%@",arr);
}

void testInsertionSort() {
    NSMutableArray *arr = [[NSMutableArray alloc] initWithObjects:@57, @68,@59,@52,@72,@28,@96,@33,@24,@72,nil];
    [Sort insertionSort:arr];
    NSLog(@"----%@",arr);
}

void testSelectionSort() {
    NSMutableArray *arr = [[NSMutableArray alloc] initWithObjects:@57, @68,@59,@52,@72,@28,@96,@33,@24,nil];
    [Sort selectionSort:arr];
    NSLog(@"----%@",arr);
}


void testHeapSort() {
    NSMutableArray *arr = [[NSMutableArray alloc] initWithObjects:@57, @68,@59,@52,@72,@28,@96,@33,@24,nil];
    [Sort heapSort:arr];
    NSLog(@"----%@",arr);
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
//        testQuckSort();
//        testBubbleSort();
//        testHeapSort();
//        testSelectionSort();
        testInsertionSort();
     
//        NSLog(@"--%@",[Sum sumWithArr:@[@2,@7,@11,@15] result:9]);
//        NSLog(@"--%@",[Sum sumWithArr:@[@2,@7,@11,@15] result:2]);
        
        
//        NSLog(@"-----%@",[Sum threeSumWithArr:@[@-1,@0,@1,@2,@-1,@-4] result:0]);
    
        
        
        
    }
    return 0;
}
