//
//  ViewController.h
//  VoiceRecorder
//
//  Created by Rahul Chopra on 31/08/17.
//  Copyright © 2017 Learn2iOSCenter. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface ViewController : UIViewController<AVAudioRecorderDelegate,AVAudioPlayerDelegate>

@property (weak, nonatomic) IBOutlet UIButton *record;
- (IBAction)btnRecord:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *play;
- (IBAction)btnPlay:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *stop;
- (IBAction)btnStop:(id)sender;

@end

