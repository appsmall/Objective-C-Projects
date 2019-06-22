//
//  ViewController.m
//  sliderExample
//
//  Created by Rahul Chopra on 10/06/17.
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


- (IBAction)sliderValueChanged:(UISlider *)sender {
    
   self.lblValue.text = [NSString stringWithFormat: @"%f", (float)sender.value];
    
}
@end
