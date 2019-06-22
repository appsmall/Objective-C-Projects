//
//  ViewController.h
//  VoiceRecording
//
//  Created by Rahul Chopra on 04/09/17.
//  Copyright © 2017 UncleBar. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface ViewController : UIViewController<AVAudioRecorderDelegate,AVAudioPlayerDelegate>

- (IBAction)btnRecord:(id)sender;
- (IBAction)btnStop:(id)sender;
- (IBAction)btnPlay:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *record;
@property (weak, nonatomic) IBOutlet UIButton *stopRecord;
@property (weak, nonatomic) IBOutlet UIButton *play;

@end

