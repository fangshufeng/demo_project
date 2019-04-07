//
//  main.m
//  FooDyldStubBinder
//
//  Created by fangshufeng on 2019/4/1.
//  Copyright © 2019 fangshufeng. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

int main(int argc, char * argv[]) {
    @autoreleasepool {
        
        char *str = "HelloWorld";
        strlen(str);
        
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
