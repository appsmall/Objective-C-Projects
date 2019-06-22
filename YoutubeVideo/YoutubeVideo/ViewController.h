//
//  ViewController.h
//  YoutubeVideo
//
//  Created by Rahul Chopra on 05/07/17.
//  Copyright © 2017 Rahul Chopra. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <YTPlayerView.h>

@interface ViewController : UIViewController<YTPlayerViewDelegate>

@property (strong, nonatomic) IBOutlet YTPlayerView *playerView;

- (IBAction)playVideo:(id)sender;
- (IBAction)stopVideo:(id)sender;

@end

