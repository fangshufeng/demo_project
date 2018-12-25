//
//  ViewController.m
//  Strategy
//
//  Created by fangshufeng on 2018/12/25.
//  Copyright © 2018 fangshufeng. All rights reserved.
//

#import "ViewController.h"
#import "StrategyTextFiled.h"

#import "UsernameVerification.h"
#import "PwdVerification.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet StrategyTextFiled *userName;
@property (weak, nonatomic) IBOutlet StrategyTextFiled *pwd;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.userName.verfication = [[UsernameVerification alloc] init];
    self.pwd.verfication = [[PwdVerification alloc] init];
}

- (IBAction)login:(id)sender {
    
//    NSString *err = nil;
//    if (self.userName.text.length == 0) {
//        err = @"username not null";
//    } else if (self.pwd.text.length == 0) {
//        err = @"password not null";
//    }
//
//    if (err) {
//        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"提示" message:err delegate:nil cancelButtonTitle:nil otherButtonTitles:@"确定", nil];
//        [alert show];
//        return;
//    }

    for (UIView *v  in self.view.subviews) {
        if ([v isKindOfClass:[StrategyTextFiled class]] &&
            ![(StrategyTextFiled *)v verficate]) {
            return;
        }
    }
    
    NSLog(@"success");
    
}


@end
