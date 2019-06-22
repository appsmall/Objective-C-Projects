//
//  ViewController.m
//  sliderMenu
//
//  Created by Rahul Chopra on 22/07/17.
//  Copyright © 2017 learn2iOSCenter. All rights reserved.
//

#import "ViewController.h"
#import "SWRevealViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"Welcome";
    _leftBarButton.target = self.revealViewController;
    _leftBarButton.action = @selector(revealToggle:);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)leftBarButton:(id)sender {
}
@end
