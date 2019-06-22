//
//  ViewController.m
//  PickerView
//
//  Created by Rahul Chopra on 13/05/17.
//  Copyright © 2017 Rahul Chopra. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSArray *devices;
}
@end


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    devices = @[@"iPhone", @"iPad", @"iPod Touch", @"iTV", @"iWatch"];
    _pickerView.dataSource = self;
    _pickerView.delegate = self;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger) numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

-(NSInteger) pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    return devices.count;
}

- (nullable NSString *) pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    return devices[row];
}



-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    
    self.lblText.text = devices[row];
    
  /*  //Alert Function
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Alert" message:@"You are successfully entered" preferredStyle: UIAlertControllerStyleAlert];
    
    UIAlertAction *actionOK = [UIAlertAction actionWithTitle:@"OK" style:YES handler:nil];
    
    [alert addAction: actionOK];
    
    [self presentViewController:alert animated:YES completion:nil]; */
    
    
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Alert" message:@"Message" preferredStyle:UIAlertControllerStyleAlert];
    
    [alertController addTextFieldWithConfigurationHandler:^(UITextField *textField)
     {
         textField.placeholder = NSLocalizedString(@"LoginPlaceholder", @"Login");
     }];
    
    [alertController addTextFieldWithConfigurationHandler:^(UITextField *textField)
     {
         textField.placeholder = NSLocalizedString(@"PasswordPlaceholder", @"Password");
         textField.secureTextEntry = YES;
     }];
    
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"OK", @"OK action") style:UIAlertActionStyleDefault handler:^(UIAlertAction *action)
                {
                    
                    UIButton *OK;
                    OK.layer.backgroundColor = [UIColor blackColor].CGColor;
                    
                }];
    alertController.view.layer.backgroundColor = [[UIColor redColor]CGColor];
    [alertController addAction: okAction];
    
    [self presentViewController:alertController animated:YES completion:nil];
}

@end
