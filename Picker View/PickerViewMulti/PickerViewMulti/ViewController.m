//
//  ViewController.m
//  PickerViewMulti
//
//  Created by Rahul Chopra on 14/10/17.
//  Copyright © 2017 learn2ios. All rights reserved.
//

#import "ViewController.h"
#import "ShowFormData.h"

@interface ViewController ()
{
    NSArray *dob;
    NSArray *age;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _txtName.delegate = self;
    _pickerView1.dataSource = self;
    _pickerView1.delegate = self;
    _pickerView2.dataSource = self;
    _pickerView2.delegate = self;
    
    dob = @[@"1",@"2",@"3",@"4"];
    age = @[@"11",@"12",@"13",@"14",@"15"];
}


- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    
    if (pickerView == _pickerView1) {
        return dob.count;
    }
    else if (pickerView == _pickerView2)
    {
        return age.count;
    }
    else
    {
        return 0;
    }
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    if (pickerView == _pickerView1) {
        return dob[row];
    }
    else if (pickerView == _pickerView2)
    {
        return age[row];
    }
    else
    {
        return nil;
    }
}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    if (pickerView == _pickerView1)
    {
        _label1.text = dob[row];
    }
    else if (pickerView == _pickerView2)
    {
        _label2.text = age[row];
    }
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    ShowFormData *showVC = [segue destinationViewController];
    
    showVC.strName = _txtName;
    
    showVC.strDOB = _label1;
    
    showVC.strAge = _label2;
    
    [_txtName resignFirstResponder];
}


@end
