//
//  ViewController.m
//  sideBarMenu
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
    
    //Make a Left Bar Button with action perform on that button.
    _leftBarButton.target = self.revealViewController;
    _leftBarButton.action = @selector(revealToggle:);
    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
