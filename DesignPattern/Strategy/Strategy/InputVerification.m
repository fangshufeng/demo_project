//
//  InputVerification.m
//  Strategy
//
//  Created by fangshufeng on 2018/12/25.
//  Copyright © 2018 fangshufeng. All rights reserved.
//

#import "InputVerification.h"

@implementation InputVerification

- (BOOL)verfication:(id)tx Succeed:(NSError * _Nullable __autoreleasing *)error {
    if (error) {
        *error = nil;
    }
    return YES;
}

@end
