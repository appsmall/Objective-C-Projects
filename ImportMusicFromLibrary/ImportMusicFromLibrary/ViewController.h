//
//  ViewController.h
//  ImportMusicFromLibrary
//
//  Created by Rahul Chopra on 09/09/17.
//  Copyright © 2017 UncleBar. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import <MediaPlayer/MediaPlayer.h>

@interface ViewController : UIViewController<MPMediaPickerControllerDelegate>


@property (weak, nonatomic) IBOutlet UIButton *upload;

@end

