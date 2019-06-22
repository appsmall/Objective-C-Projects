//
//  OverviewVC.m
//  TableViewDemo
//
//  Created by Rahul Chopra on 29/08/17.
//  Copyright © 2017 Learn2iOSCenter. All rights reserved.
//

#import "OverviewVC.h"
#import "MainController.h"

@interface OverviewVC ()

@end

@implementation OverviewVC

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
