//
//  ViewController.m
//  BaseOcSyntaxDemo
//
//  Created by fangshufeng on 2019/3/8.
//  Copyright © 2019 fangshufeng. All rights reserved.
//

#import "ViewController.h"
#import "Son.h"
#import <WebKit/WebKit.h>

@interface ViewController ()

@end

@implementation ViewController

+ (void)load {
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Son *son  = [[Son alloc] init];
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(keyboardWillHide)
                                                 name:UIKeyboardWillHideNotification
                                               object:nil];
    
    WKWebView *webView = [[WKWebView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)];
    NSURL *url = [NSURL URLWithString:@"http://huojianshiwan.com/#/withdrawMoney"];
    [webView loadRequest:[NSURLRequest requestWithURL:url]];
    [self.view addSubview:webView];
}

- (void)keyboardWillHide {
    NSLog(@"keyboardWillHide");
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
//    abort();
//    exit(0);
}


@end
