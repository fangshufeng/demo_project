//
//  main.m
//  BaseOcSyntaxDemo
//
//  Created by fangshufeng on 2019/3/8.
//  Copyright © 2019 fangshufeng. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "Person.h"

int main(int argc, char * argv[]) {
    @autoreleasepool {
        
        
        Person *p = [[Person alloc] init];
        [p performSelector:@selector(ddd)];
        
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
