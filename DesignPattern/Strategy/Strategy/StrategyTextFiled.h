//
//  StrategyTextFiled.h
//  Strategy
//
//  Created by fangshufeng on 2018/12/25.
//  Copyright © 2018 fangshufeng. All rights reserved.
//

#import <UIKit/UIKit.h>

@class InputVerification;

NS_ASSUME_NONNULL_BEGIN

@interface StrategyTextFiled : UITextField

@property (nonatomic, strong)  InputVerification *verfication;


- (BOOL)verficate;

@end

NS_ASSUME_NONNULL_END
