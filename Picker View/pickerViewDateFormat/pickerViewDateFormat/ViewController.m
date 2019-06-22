//
//  ViewController.m
//  pickerViewDateFormat
//
//  Created by Rahul Chopra on 13/05/17.
//  Copyright © 2017 Rahul Chopra. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSArray *date;
    NSArray *month;
    NSArray *year;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    date = @[@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10"];
    month = @[@"Jan",@"Feb",@"Mar",@"Apr",@"May",@"June",@"July",@"Aug"];
    year = @[@"1990",@"1991",@"1992",@"1993"];
    
    _pickerView.dataSource = self;
    _pickerView.delegate = self;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger) numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 3;
}

- (NSInteger) pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    
    if (component == 0) {
        return date.count;
    }
    else if (component == 1) {
        return month.count;
    }
    else if (component == 2) {
        return year.count;
    }
    return 0;
    
}

- (nullable NSString *) pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    
    if (component == 0) {
        return date[row];
    }
    else if (component == 1) {
        return month[row];
    }
    else if (component == 2) {
        return year[row];
    }
    return nil;
}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    
    if (component == 0) {
        self.lblText.text = date[row];
    }
    else if (component == 1) {
        self.lblText.text = month[row];
    }
    else if (component == 2) {
        self.lblText.text = year[row];
    }
}


@end
