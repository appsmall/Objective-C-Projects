//
//  ViewController.m
//  videoPlayerExample
//
//  Created by Rahul Chopra on 10/06/17.
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


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)btnPlay:(id)sender {
    
    NSLog(@"ok");
    
    NSString *path = [[NSBundle mainBundle] pathForResource: @"LCA" ofType: @"mp4"];
    
    //NSURL *url = [NSURL fileURLWithPath: path];
    NSURL *url = [NSURL fileURLWithPath:path];
    
    AVPlayer *player = [AVPlayer playerWithURL: url];
    
    AVPlayerViewController *controller = [[AVPlayerViewController alloc] init];
    
    controller.player = player;
    
    controller.view.frame = self.view.bounds;
    
    [[self view] addSubview: controller.view];
    
    [player play];
    
}
@end
