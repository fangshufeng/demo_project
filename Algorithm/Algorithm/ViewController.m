//
//  ViewController.m
//  Algorithm
//
//  Created by fangshufeng on 2019/3/7.
//  Copyright © 2019 fangshufeng. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    NSLog(@"======%d",[self isValid:@"{[]}"]);
}

- (BOOL)isValid:(NSString *)str {
    
    
    NSDictionary *dic = @{@"}":@"{",
                          @"]":@"[",
                          @")":@"("
                          };
    
    NSMutableArray *arr = [NSMutableArray array];
    
    for (int i = 0 ; i < str.length; i ++ ) {
        
        NSString *item = [str substringWithRange:NSMakeRange(i, 1)];
        
        if ([dic.allValues containsObject:item]) {
            [arr addObject:item];
        } else if ([dic.allKeys containsObject:item]) {
            
            NSString *lastObj = [arr lastObject];
            
            if ([dic[item] isEqualToString:lastObj]) {
                [arr removeLastObject];
            } else {
                return NO;
            }
            
        } else {
            [arr addObject:item];
        }
    }
    
    return arr.count == 0;
}

@end
