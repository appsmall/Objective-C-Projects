//
//  ViewController.m
//  apiIntegration
//
//  Created by Rahul Chopra on 21/06/17.
//  Copyright © 2017 Rahul Chopra. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    FBSDKLoginButton *loginButton = [[FBSDKLoginButton alloc] init];
    
    // Optional: Place the button in the center of your view.
    loginButton.center = self.view.center;
    
    [self.view addSubview:loginButton];
    
    if ([FBSDKAccessToken currentAccessToken]) {
        NSLog(@"User is logged in");
    }
    loginButton.readPermissions =
    @[@"public_profile", @"email", @"user_friends"];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
