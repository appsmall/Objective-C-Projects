//
//  ViewController.m
//  progressBar
//
//  Created by Rahul Chopra on 01/06/17.
//  Copyright © 2017 Rahul Chopra. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    .f
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)btnStart:(id)sender {
    
    _myTimer = [NSTimer scheduledTimerWithTimeInterval:0.05 repeats:YES block:^(NSTimer * _Nonnull timer) {
        static int count = 0;
        count++;
        if (count <= 100) {
            self.lblValue.text = [NSString stringWithFormat:@"%d %%", count];
            self.progressBar.progress = count/100.0f;
        }
    }];
    
}
@end
