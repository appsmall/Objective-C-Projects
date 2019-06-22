//
//  ViewController.m
//  webView
//
//  Created by Rahul Chopra on 31/05/17.
//  Copyright © 2017 Rahul Chopra. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.webView.delegate = self;
    NSString *string = @"https://www.google.co.in";
    NSURL *stringURL = [NSURL URLWithString: string];
    NSURLRequest *requestURL = [NSURLRequest requestWithURL: stringURL];
    [self.webView loadRequest: requestURL];
    
}

- (void)webViewDidStartLoad:(UIWebView *)webView {
    
    [self.activityIndicator startAnimating];
    
}
- (void)webViewDidFinishLoad:(UIWebView *)webView {
    
    [self.activityIndicator stopAnimating];
    self.activityIndicator.hidesWhenStopped = YES;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
