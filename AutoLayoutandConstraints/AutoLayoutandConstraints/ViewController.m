//
//  ViewController.m
//  AutoLayoutandConstraints
//
//  Created by Rahul Chopra on 17/04/17.
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


- (IBAction)btnClick:(id)sender {
    _lblText.text = @"Hi, My name is Rahul Chopra.";
        //OR
    //self.lblText.text = @"Hi, My name is Rahul Chopra.";
        //OR
    //We use "Synthesize property;" after "@implementation ViewController"
}
@end
