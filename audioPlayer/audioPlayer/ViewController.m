//
//  ViewController.m
//  audioPlayer
//
//  Created by Rahul Chopra on 10/06/17.
//  Copyright © 2017 Rahul Chopra. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    AVAudioPlayer *audioPlayer;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)btnAudio:(id)sender {
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Tere Sang Yaara" ofType:@"mp3"];
    
    NSURL *url = [NSURL fileURLWithPath:path];
    
    audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL: url error:nil];
    
    [audioPlayer play];
    
}

- (IBAction)btnStop:(id)sender {
    
    [audioPlayer stop];
    
}

- (IBAction)btnPause:(id)sender {
    
    [audioPlayer pause];
    
}

- (IBAction)btnSlider:(UISlider *)sender {
    
    audioPlayer.volume = sender.value;
    
    
}
@end
