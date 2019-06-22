//
//  NavigationViewController.m
//  sliderMenu
//
//  Created by Rahul Chopra on 22/07/17.
//  Copyright © 2017 learn2iOSCenter. All rights reserved.
//

#import "NavigationViewController.h"
#import "SWRevealViewController.h"

@interface NavigationViewController ()
{
    NSArray *menu;
}
@end

@implementation NavigationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    menu = @[@"one",@"two"];
    
    self.table
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
