//
//  StrategyTextFiled.m
//  Strategy
//
//  Created by fangshufeng on 2018/12/25.
//  Copyright © 2018 fangshufeng. All rights reserved.
//

#import "StrategyTextFiled.h"
#import "InputVerification.h"

@implementation StrategyTextFiled

- (BOOL)verficate {
    
    NSError *err = nil;
    
    BOOL result =   [self.verfication verfication:self Succeed:&err];
    
    if (result) {
        return YES;
    }
    
    if (err.localizedDescription) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"提示" message:err.localizedDescription delegate:nil cancelButtonTitle:nil otherButtonTitles:@"确定", nil];
        [alert show];
    }
    
    return NO;
}

@end
