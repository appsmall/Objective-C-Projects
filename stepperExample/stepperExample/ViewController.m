//
//  ViewController.m
//  stepperExample
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
    
    self.stepperOutlet.minimumValue = 0;
    self.stepperOutlet.maximumValue = 10;
    self.stepperOutlet.stepValue = 2;
    self.stepperOutlet.autorepeat = YES;
    self.stepperOutlet.continuous = YES;
    
    self.stepperLabel.text =[NSString stringWithFormat: @"%d", 0];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)stepperAction:(UIStepper *)sender {
    
   /*   You will type either these two lines or the last line.
        This will only convert the interger type values into strings.
    
      int stepperIntValue = self.stepperOutlet.value;
    
   // self.stepperLabel.text = [NSString stringWithFormat: @"%d", stepperIntValue];
    */
    
    self.stepperLabel.text = [NSString stringWithFormat: @"%d", (int)sender.value];
    
}
@end
