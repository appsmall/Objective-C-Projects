//
//  MusicVC.h
//  MusicPlayerApp
//
//  Created by Rahul Chopra on 10/09/17.
//  Copyright © 2017 UncleBar. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MediaPlayer/MediaPlayer.h>

@interface MusicVC : UIViewController<MPMediaPickerControllerDelegate>

@property (weak, nonatomic) IBOutlet UIImageView *imgMusic;

- (IBAction)btnShowMedia:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *oltShowMedia;

@property (weak, nonatomic) IBOutlet UILabel *lblTitle;
@property (weak, nonatomic) IBOutlet UILabel *lblArtist;
@property (weak, nonatomic) IBOutlet UILabel *lblAlbum;


- (IBAction)btnBack:(id)sender;
- (IBAction)btnPlay:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *oltPlay;
- (IBAction)btnNext:(id)sender;
- (IBAction)volumeChanged:(id)sender;
@property (weak, nonatomic) IBOutlet UISlider *oltSlider;


@property MPMusicPlayerController *musicPlayer;

@end
