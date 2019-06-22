//
//  ViewController.m
//  segmentedCtrl
//
//  Created by Rahul Chopra on 16/05/17.
//  Copyright © 2017 Rahul Chopra. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)changeColor:(id)sender {
    switch (self.segmCtrl.selectedSegmentIndex) {
        case 0:
            self.view.backgroundColor = [UIColor greenColor];
            break;
        case 1:
            self.view.backgroundColor = [UIColor blueColor];
            break;
        case 2:
            self.view.backgroundColor = [UIColor redColor];
            break;
            
        default:
            NSLog(@"Wrong Input");
            break;
    }
}
@end
