//
//  RequirementVC.m
//  TableViewDemo
//
//  Created by Rahul Chopra on 29/08/17.
//  Copyright © 2017 Learn2iOSCenter. All rights reserved.
//

#import "RequirementVC.h"
#import "MainController.h"

@interface RequirementVC ()

@end

@implementation RequirementVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)btnBack:(id)sender
{
    MainController *mainVC = [self.storyboard instantiateViewControllerWithIdentifier: @"mainVC"];
    [self presentViewController: mainVC animated:YES completion:nil];
}
@end
