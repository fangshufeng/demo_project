//
//  InputVerification.h
//  Strategy
//
//  Created by fangshufeng on 2018/12/25.
//  Copyright © 2018 fangshufeng. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "StrategyTextFiled.h"

NS_ASSUME_NONNULL_BEGIN

@interface InputVerification : NSObject

- (BOOL)verfication:(StrategyTextFiled *)tx Succeed:(NSError **)error;

@end

NS_ASSUME_NONNULL_END
