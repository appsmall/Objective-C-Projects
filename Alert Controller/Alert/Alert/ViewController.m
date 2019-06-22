//
//  ViewController.m
//  Alert
//
//  Created by Rahul Chopra on 18/05/17.
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


- (IBAction)btn:(id)sender {
    self.lblText.text = @"Hello";
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle: @"Alert" message:@"You are successfully submitted." preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *actionReset = [UIAlertAction actionWithTitle:@"Reset" style:UIAlertActionStyleDestructive handler:nil];
    
    UIAlertAction *actionCancel = [UIAlertAction actionWithTitle:@"Cancel" style: UIAlertActionStyleCancel handler: nil];
    
    UIAlertAction *actionOK = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:nil];
                               
    [alert addAction: actionOK];
    [alert addAction:actionCancel];
    [alert addAction:actionReset];
                               
    [self presentViewController:alert animated:YES completion:nil];
}


@end
