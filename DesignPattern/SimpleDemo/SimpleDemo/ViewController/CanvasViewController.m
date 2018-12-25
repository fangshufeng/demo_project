//
//  CanvasViewController.m
//  SimpleDemo
//
//  Created by fangshufeng on 2018/12/25.
//  Copyright © 2018 fangshufeng. All rights reserved.
//

#import "CanvasViewController.h"
#import "ThumbnailViewController.h"
#import "PaletteViewController.h"

@interface CanvasViewController ()

@end

@implementation CanvasViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}


- (IBAction)thumbnail:(id)sender {
    ThumbnailViewController *vc = [[ThumbnailViewController alloc] init];
    [self presentViewController:vc animated:YES completion:nil];
}

- (IBAction)palette:(id)sender {
    PaletteViewController *vc = [[PaletteViewController alloc] init];
    [self presentViewController:vc animated:YES completion:nil];
}


@end
