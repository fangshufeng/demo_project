//
//  main.m
//  Algorithm
//
//  Created by fangshufeng on 2019/3/7.
//  Copyright © 2019 fangshufeng. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Sort.h"

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

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        testQuckSort();
        testBubbleSort();
     
    }
    return 0;
}
