//
//  ViewController.m
//  YoutubeVideo
//
//  Created by Rahul Chopra on 05/07/17.
//  Copyright © 2017 Rahul Chopra. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.playerView.delegate = self;
    
    NSDictionary *playerVars = @{@"playsinline" : @1,
                                 };
    
    [self.playerView loadWithVideoId: @"NpiHkLlcmSM" playerVars:playerVars];
}

- (IBAction)playVideo:(id)sender {
    
    [self.playerView playVideo];
}

- (IBAction)stopVideo:(id)sender {
    
    [self.playerView stopVideo];
}

- (void)playerView:(YTPlayerView *)playerView didChangeToState:(YTPlayerState)state {
    switch (state) {
        case kYTPlayerStatePlaying:
            NSLog(@"Started playback");
            break;
        case kYTPlayerStatePaused:
            NSLog(@"Paused playback");
            break;
        default:
            break;
    }
}

//- (void)playerViewDidBecomeReady:(YTPlayerView *)playerView;
// - (void)playerView:(YTPlayerView *)playerView didChangeToState:(YTPlayerState)state;
// - (void)playerView:(YTPlayerView *)playerView didChangeToQuality:(YTPlaybackQuality)quality;
// - (void)playerView:(YTPlayerView *)playerView receivedError:(YTPlayerError)error;

@end
