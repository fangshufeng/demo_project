//
//  main.m
//  Algorithm
//
//  Created by fangshufeng on 2019/3/7.
//  Copyright © 2019 fangshufeng. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "QuickSort.h"



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        NSMutableArray *arr = [[NSMutableArray alloc] initWithObjects:@57, @68,@59,@52,@72,@28,@96,@33,@24,nil];
        [QuickSort quickSort:arr lowLoc:0 highLoc:(int)arr.count - 1];
       
        NSLog(@"----%@",arr);
    }
    return 0;
}
