//
//  UsernameVerification.m
//  Strategy
//
//  Created by fangshufeng on 2018/12/25.
//  Copyright © 2018 fangshufeng. All rights reserved.
//

#import "UsernameVerification.h"

@implementation UsernameVerification

- (BOOL)verfication:(StrategyTextFiled *)tx Succeed:(NSError * _Nullable __autoreleasing *)error {
    
    if (tx.text.length == 0) {
        NSString *description = NSLocalizedString(@"usernamem not null", @"");
        
        NSArray *objArray = [NSArray arrayWithObjects:description, nil];
        NSArray *keyArray = [NSArray arrayWithObjects:NSLocalizedDescriptionKey,nil];
        
        NSDictionary *userInfo = [NSDictionary dictionaryWithObjects:objArray
                                                             forKeys:keyArray];
        
        *error = [NSError errorWithDomain:@"verifation.domain" code:4001 userInfo:userInfo];
        return NO;
    }
    return YES;
}

@end
