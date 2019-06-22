//
//  ViewController.m
//  VoiceRecorder
//
//  Created by Rahul Chopra on 31/08/17.
//  Copyright © 2017 Learn2iOSCenter. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    AVAudioRecorder *recorder;
    AVAudioPlayer *player;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Disable Stop/Play button when application launches
    [_play setEnabled:NO];
    [_stop setEnabled:NO];
    
    NSArray *pathComponents = [NSArray arrayWithObjects:[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)lastObject], @"MyAudioMemo.m4a", nil];
    NSURL *outputFileURL = [NSURL fileURLWithPathComponents:pathComponents];
    NSLog(@"HERE: %@",pathComponents);
    //Setup Audio Session
    AVAudioSession *session = [AVAudioSession sharedInstance];
    [session setCategory:AVAudioSessionCategoryPlayAndRecord error:nil];
    
    //Define the Recorder Settings...
    NSMutableDictionary *recordSetting = [[NSMutableDictionary alloc]init];
    [recordSetting setValue:[NSNumber numberWithInt:kAudioFormatMPEG4AAC] forKey:AVFormatIDKey];
    [recordSetting setValue:[NSNumber numberWithFloat:44100.0] forKey:AVSampleRateKey];
    [recordSetting setValue:[NSNumber numberWithInt:2] forKey:AVNumberOfChannelsKey];
    
    //Initiate and Prepare the Recorder
    recorder = [[AVAudioRecorder alloc]initWithURL:outputFileURL settings:recordSetting error:NULL];
    recorder.delegate = self;
    recorder.meteringEnabled = YES;
    [recorder prepareToRecord];
    
    
    
    
    
    NSData *aData = [NSData dataWithContentsOfURL:[NSURL fileURLWithPathComponents:pathComponents]];
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0]; // Get documents folder
    NSString *dataPath = [documentsDirectory stringByAppendingPathComponent:@"/MyFolder.mp3"];
    NSLog(@"%@",dataPath);
    [aData writeToFile:dataPath atomically:YES];
    
    NSLog(@"Path is : %@",paths);
    NSLog(@"String is : %@",dataPath);
}



- (IBAction)btnRecord:(id)sender
{
    //Stop the audio player before Recording...
    if (player.playing)
    {
        [player stop];
    }
    
    if (!recorder.recording)
    {
        AVAudioSession *session = [AVAudioSession sharedInstance];
        [session setActive:YES error:nil];
        
        //Start Recording
        [recorder record];
        [_record setTitle:@"Pause Recording" forState:UIControlStateNormal];
    }
    else
    {
        [recorder pause];
        [_record setTitle:@"Resume Recording" forState:UIControlStateNormal];
    }
    
    [_stop setEnabled:YES];
    [_play setEnabled:NO];
}

- (IBAction)btnPlay:(id)sender
{
    if (!recorder.recording){
        player = [[AVAudioPlayer alloc] initWithContentsOfURL:recorder.url error:nil];
        [player setDelegate:self];
        [player play];
    }
}

- (IBAction)btnStop:(id)sender
{
    [recorder stop];
    
    AVAudioSession *audioSession = [AVAudioSession sharedInstance];
    [audioSession setActive:NO error:nil];
}

- (void) audioRecorderDidFinishRecording:(AVAudioRecorder *)avrecorder successfully:(BOOL)flag{
    [_record setTitle:@"Record" forState:UIControlStateNormal];
    
    [_stop setEnabled:NO];
    [_play setEnabled:YES];
}

- (void) audioPlayerDidFinishPlaying:(AVAudioPlayer *)player successfully:(BOOL)flag{
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Done" message:@"Finish playing the recording!" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *action = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:nil];
    [alert addAction:action];
    [self presentViewController:alert animated:YES completion:nil];
}


@end
