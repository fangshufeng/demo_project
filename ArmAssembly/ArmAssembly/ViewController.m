//
//  ViewController.m
//  ArmAssembly
//
//  Created by fangshufeng on 2018/12/14.
//  Copyright © 2018 fangshufeng. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    /* test r0-r7
    foo7(1, 2, 3, 4, 5, 6, 7);
    
    foo8(1, 2, 3, 4, 5, 6, 7,8);
    
    foo9(1, 2, 3, 4, 5, 6, 7,8,9);
    
    foo10(1, 2, 3, 4, 5  ,6,7,8,9,10);
     */
    
    
    /*
    fooReturnValue();
     */
    
    int a = 10;
    
    if (a > 1) {
        fooFp();
    }
    
    
    
}



void foo1(int a ) {
    printf("%d",a);
}


/*
 * ArmAssembly`foo2:
 0x101062760 <+0>:  sub    sp, sp, #0x20             ; =0x20
 0x101062764 <+4>:  str    w0, [sp, #0x1c]
 0x101062768 <+8>:  str    w1, [sp, #0x18]
 0x10106276c <+12>: str    w2, [sp, #0x14]
 0x101062770 <+16>: str    w3, [sp, #0x10]
 0x101062774 <+20>: str    w4, [sp, #0xc]
 0x101062778 <+24>: str    w5, [sp, #0x8]
 0x10106277c <+28>: str    w6, [sp, #0x4]
 ->  0x101062780 <+32>: add    sp, sp, #0x20             ; =0x20
 0x101062784 <+36>: ret

 */
void foo7(int a,int b,int c ,int d ,int e,int f,int g) {
    
}
/*
 *ArmAssembly`foo8:
 0x10024275c <+0>:  sub    sp, sp, #0x20             ; =0x20
 0x100242760 <+4>:  str    w0, [sp, #0x1c]
 0x100242764 <+8>:  str    w1, [sp, #0x18]
 0x100242768 <+12>: str    w2, [sp, #0x14]
 0x10024276c <+16>: str    w3, [sp, #0x10]
 0x100242770 <+20>: str    w4, [sp, #0xc]
 0x100242774 <+24>: str    w5, [sp, #0x8]
 0x100242778 <+28>: str    w6, [sp, #0x4]
 0x10024277c <+32>: str    w7, [sp]
 ->  0x100242780 <+36>: add    sp, sp, #0x20             ; =0x20
 0x100242784 <+40>: ret

 */
void foo8(int a,int b,int c ,int d ,int e,int f,int g,int h) {
    
}


/*
 * ArmAssembly`foo9:
 0x100dc2718 <+0>:  sub    sp, sp, #0x30             ; =0x30
 0x100dc271c <+4>:  ldr    w8, [sp, #0x30]
 0x100dc2720 <+8>:  str    w0, [sp, #0x2c]
 0x100dc2724 <+12>: str    w1, [sp, #0x28]
 0x100dc2728 <+16>: str    w2, [sp, #0x24]
 0x100dc272c <+20>: str    w3, [sp, #0x20]
 0x100dc2730 <+24>: str    w4, [sp, #0x1c]
 0x100dc2734 <+28>: str    w5, [sp, #0x18]
 0x100dc2738 <+32>: str    w6, [sp, #0x14]
 0x100dc273c <+36>: str    w7, [sp, #0x10]
 0x100dc2740 <+40>: str    w8, [sp, #0xc]
 0x100dc2744 <+44>: add    sp, sp, #0x30             ; =0x30
 0x100dc2748 <+48>: ret

 */
void foo9(int a,int b,int c ,int d ,int e,int f,int g,int h,int i) {
    
}


/*
 * ArmAssembly`foo:
 0x101062724 <+0>:  sub    sp, sp, #0x30             ; =0x30
 0x101062728 <+4>:  ldr    w8, [sp, #0x34]
 0x10106272c <+8>:  ldr    w9, [sp, #0x30]
 0x101062730 <+12>: str    w0, [sp, #0x2c]
 0x101062734 <+16>: str    w1, [sp, #0x28]
 0x101062738 <+20>: str    w2, [sp, #0x24]
 0x10106273c <+24>: str    w3, [sp, #0x20]
 0x101062740 <+28>: str    w4, [sp, #0x1c]
 0x101062744 <+32>: str    w5, [sp, #0x18]
 0x101062748 <+36>: str    w6, [sp, #0x14]
 0x10106274c <+40>: str    w7, [sp, #0x10]
 0x101062750 <+44>: str    w9, [sp, #0xc]
 0x101062754 <+48>: str    w8, [sp, #0x8]
 0x101062758 <+52>: add    sp, sp, #0x30             ; =0x30
 0x10106275c <+56>: ret
 */
void foo10(int a,int b,int c ,int d ,int e,int f,int g,int h,int i,int j) {
    
}

int fooReturnValue() {
    return  10;
}


/*
 *ArmAssembly`fooFp:
 0x100dbe76c <+0>:  sub    sp, sp, #0x20             ; =0x20
 0x100dbe770 <+4>:  stp    x29, x30, [sp, #0x10]
 0x100dbe774 <+8>:  add    x29, sp, #0x10            ; =0x10
 
 0x100dbe778 <+12>: mov    w8, #0x5
 0x100dbe77c <+16>: orr    w9, wzr, #0x4
 0x100dbe780 <+20>: stur   w9, [x29, #-0x4]
 0x100dbe784 <+24>: str    w8, [sp, #0x8]
 0x100dbe788 <+28>: bl     0x100dbe798               ; fooFp2 at ViewController.m:154
 
 0x100dbe78c <+32>: ldp    x29, x30, [sp, #0x10]
 0x100dbe790 <+36>: add    sp, sp, #0x20             ; =0x20
 0x100dbe794 <+40>: ret

 */

void fooFp() {
    int a = 4;
    int b = 5;
    fooFp2();
}

/*
ArmAssembly`fooFp2:
0x100f82798 <+0>:  sub    sp, sp, #0x10             ; =0x10
 
0x100f8279c <+4>:  orr    w8, wzr, #0x3
0x100f827a0 <+8>:  orr    w9, wzr, #0x2
0x100f827a4 <+12>: str    w9, [sp, #0xc]
0x100f827a8 <+16>: str    w8, [sp, #0x8]
 
0x100f827ac <+20>: add    sp, sp, #0x10             ; =0x10
0x100f827b0 <+24>: ret
*/
void fooFp2() {
    int a = 2;
    int b = 3;
}

@end
