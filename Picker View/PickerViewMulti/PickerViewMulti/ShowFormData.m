//
//  ShowFormData.m
//  PickerViewMulti
//
//  Created by Rahul Chopra on 14/10/17.
//  Copyright © 2017 learn2ios. All rights reserved.
//

#import "ShowFormData.h"

@interface ShowFormData ()

@end

@implementation ShowFormData

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _lblName.text = _strName;
    _lblDOB.text = _strDOB;
    _lblAge.text = _strAge;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
