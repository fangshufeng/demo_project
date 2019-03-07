//
//  QuickSort.h
//  Algorithm
//
//  Created by fangshufeng on 2019/3/7.
//  Copyright © 2019 fangshufeng. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface QuickSort : NSObject

+ (void)quickSort:(NSMutableArray *)sortArr lowLoc:(int)lowLoc highLoc:(int)hightLoc;

@end

NS_ASSUME_NONNULL_END
