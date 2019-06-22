//
//  LoginVC.m
//  CollectionViewRashmi
//
//  Created by Rahul Chopra on 14/09/17.
//  Copyright © 2017 UncleBar. All rights reserved.
//

#import "LoginVC.h"
#import "CollectionVC.h"

@interface LoginVC ()

@end

@implementation LoginVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)btnLogin:(id)sender
{
    [self.navigationController popViewControllerAnimated:true];
}


@end
