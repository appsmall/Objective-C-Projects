//
//  ViewController.m
//  Localization
//
//  Created by Rahul Chopra on 05/10/17.
//  Copyright © 2017 UncleBar. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnBuy:(id)sender
{
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Alert" message:NSLocalizedString(@"BOOK_PURCHASE", @"MESSAGE") preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *action = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:nil];
    [alert addAction:action];
    [self presentViewController:alert animated:YES completion:nil];
}

@end
