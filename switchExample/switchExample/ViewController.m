//
//  ViewController.m
//  switchExample
//
//  Created by Rahul Chopra on 09/06/17.
//  Copyright © 2017 Rahul Chopra. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)stepValueChanged:(UISwitch *)sender {

    if (sender.isOn) {
        self.lblName.text = @"The switch button is ON.";
    }
    else {
        self.lblName.text = @"The switch button is OFF.";
    }
    
}
@end
