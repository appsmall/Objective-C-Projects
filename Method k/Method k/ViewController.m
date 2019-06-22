//
//  ViewController.m
//  Method k
//
//  Created by Rahul Chopra on 25/04/17.
//  Copyright © 2017 Rahul Chopra. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (int) max: (int)a secondNumber: (int)b {
    int result;
    if(a>b) {
        result = a;
    }
    else {
        result = b;
    }
    return result;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
