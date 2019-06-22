//
//  ViewController.m
//  PageVC
//
//  Created by Rahul Chopra on 26/05/17.
//  Copyright © 2017 Rahul Chopra. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.deviceName.text = [NSString stringWithString:self.strName];
    self.deviceImg.image = [UIImage imageNamed:self.strImage];
    
    
    //code for page control
/*
    self.pageControl = [UIPageControl appearance];
    self.pageControl.backgroundColor = [UIColor whiteColor];
    self.pageControl.pageIndicatorTintColor = [UIColor blueColor];
    self.pageControl.currentPageIndicatorTintColor = [UIColor blackColor];
 */
}


@end
