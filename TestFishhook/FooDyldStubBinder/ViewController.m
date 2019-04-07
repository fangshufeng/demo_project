//
//  ViewController.m
//  FooDyldStubBinder
//
//  Created by fangshufeng on 2019/4/1.
//  Copyright © 2019 fangshufeng. All rights reserved.
//

#import "ViewController.h"
#include <mach-o/dyld.h>
#import "fishhook.h"

static int (*orig_strlen)(const char *__s);
int my_strlen(const char *__s) {
    printf("===\n");
    return orig_strlen(__s);
}


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


//static void __rebind_symbols_for_image(const struct mach_header *header,
//                                      intptr_t slide) {
//    printf("__rebind_symbols_for_image\n");
//}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
//    _dyld_register_func_for_add_image(__rebind_symbols_for_image);
            struct rebinding strlen_rebinding = { "strlen", my_strlen,
                (void *)&orig_strlen };
            rebind_symbols((struct rebinding[1]){ strlen_rebinding }, 1);
        char *str = "HelloWorld";
//            *0x7FFF94080698 = 0x7FFF684E8700  0x00007fff684e8700
            printf("%zd\n", strlen(str));
//    strlen(str);
}

@end

