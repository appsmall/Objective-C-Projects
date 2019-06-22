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


- (IBAction)valueChange:(id)sender {
    switch (self.segmCtrl.selectedSegmentIndex) {
        case 0:
            self.textLabel.text = @("We are in First Label");
            break;
        case 1:
            self.textLabel.text = @("We are in Second Label");
            break;
        case 2:
            self.textLabel.text = @("We are in Third Label");
            break;
        case 3:
            self.textLabel.text = @("We are in Fourth Label");
            break;
        default:
            NSLog(@"Wrong Input");
            break;
    }
}
@end
