//
//  ViewController.m
//  AlertWithButtonDisabled
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
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Login" message:@"Please enter email and password" preferredStyle:UIAlertControllerStyleAlert];
    
    [alertController addTextFieldWithConfigurationHandler:^(UITextField *textField) {
        textField.placeholder = @"Login";
        textField.borderStyle = UITextBorderStyleBezel;
        textField.clearButtonMode = UITextFieldViewModeWhileEditing;
    }];
    
    [alertController addTextFieldWithConfigurationHandler:^(UITextField *textField){
        textField.placeholder = @"Password";
        textField.secureTextEntry = TRUE;
        textField.borderStyle = UITextBorderStyleBezel;
        textField.clearButtonMode = UITextFieldViewModeWhileEditing;
    }];
    
    [alertController.view setTintColor:[UIColor redColor]];
    
    UIAlertAction *actionOK = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:nil];
    
    UIAlertAction *actionCancel = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:nil];
    
    [actionOK setEnabled: FALSE];
    
    [alertController addAction:actionOK];
    [alertController addAction:actionCancel];
    
    [self presentViewController:alertController animated:YES completion:nil];
    
}
@end
