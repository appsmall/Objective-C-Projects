//
//  MusicVC.m
//  MusicPlayerApp
//
//  Created by Rahul Chopra on 10/09/17.
//  Copyright © 2017 UncleBar. All rights reserved.
//

#import "MusicVC.h"

@interface MusicVC ()

@end

@implementation MusicVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [_oltSlider setValue: [_musicPlayer volume]];
    
    [self registerMediaPlayerNotifications];
    
    if ([_musicPlayer playbackState] == MPMusicPlaybackStatePlaying)
    {
        [_oltPlay setImage:[UIImage imageNamed:@"pause.png"] forState:UIControlStateNormal];
    }
    else
    {
        [_oltPlay setImage:[UIImage imageNamed:@"play.png"] forState:UIControlStateNormal];
    }
}


- (void) registerMediaPlayerNotifications
{
    NSNotificationCenter *notificationCenter = [NSNotificationCenter defaultCenter];
    
    [notificationCenter addObserver: self
                           selector: @selector (handle_NowPlayingItemChanged:)
                               name: MPMusicPlayerControllerNowPlayingItemDidChangeNotification
                             object: _musicPlayer];
    
    [notificationCenter addObserver: self
                           selector: @selector (handle_PlaybackStateChanged:)
                               name: MPMusicPlayerControllerPlaybackStateDidChangeNotification
                             object: _musicPlayer];
    
    [notificationCenter addObserver: self
                           selector: @selector (handle_VolumeChanged:)
                               name: MPMusicPlayerControllerVolumeDidChangeNotification
                             object: _musicPlayer];
    
    [_musicPlayer beginGeneratingPlaybackNotifications];
}

- (void) handle_NowPlayingItemChanged: (id) notification
{
    MPMediaItem *currentItem = [_musicPlayer nowPlayingItem];
    UIImage *artworkImage = [UIImage imageNamed:@"noArtworkImage.png"];
    MPMediaItemArtwork *artwork = [currentItem valueForProperty: MPMediaItemPropertyArtwork];
    
    if (artwork) {
        artworkImage = [artwork imageWithSize: CGSizeMake (200, 200)];
    }
    
    [_imgMusic setImage:artworkImage];
    
    NSString *titleString = [currentItem valueForProperty:MPMediaItemPropertyTitle];
    if (titleString) {
        _lblTitle.text = [NSString stringWithFormat:@"Title: %@",titleString];
    } else {
        _lblTitle.text = @"Title: Unknown title";
    }
    
    NSString *artistString = [currentItem valueForProperty:MPMediaItemPropertyArtist];
    if (artistString) {
        _lblArtist.text = [NSString stringWithFormat:@"Artist: %@",artistString];
    } else {
        _lblArtist.text = @"Artist: Unknown artist";
    }
    
    NSString *albumString = [currentItem valueForProperty:MPMediaItemPropertyAlbumTitle];
    if (albumString) {
        _lblAlbum.text = [NSString stringWithFormat:@"Album: %@",albumString];
    } else {
        _lblAlbum.text = @"Album: Unknown album";
    }
    
}

- (void) handle_PlaybackStateChanged: (id) notification
{
    MPMusicPlaybackState playbackState = [_musicPlayer playbackState];
    
    if (playbackState == MPMusicPlaybackStatePaused) {
        [_oltPlay setImage:[UIImage imageNamed:@"playButton.png"] forState:UIControlStateNormal];
        
    } else if (playbackState == MPMusicPlaybackStatePlaying) {
        [_oltPlay setImage:[UIImage imageNamed:@"pauseButton.png"] forState:UIControlStateNormal];
        
    } else if (playbackState == MPMusicPlaybackStateStopped) {
        
        [_oltPlay setImage:[UIImage imageNamed:@"playButton.png"] forState:UIControlStateNormal];
        [_musicPlayer stop];
        
    }
}

- (void) handle_VolumeChanged: (id) notification
{
    [_oltSlider setValue:[_musicPlayer volume]];
}

- (IBAction)btnShowMedia:(id)sender
{
    MPMediaPickerController *mediaPicker = [[MPMediaPickerController alloc] initWithMediaTypes:MPMediaTypeMusic];
    mediaPicker.delegate = self;
    mediaPicker.allowsPickingMultipleItems = YES;
    mediaPicker.prompt = @"Select songs to play";
    [self presentViewController:mediaPicker animated:YES completion:nil];
    
}

- (void) mediaPicker: (MPMediaPickerController *) mediaPicker didPickMediaItems: (MPMediaItemCollection *) mediaItemCollection
{
    if (mediaItemCollection) {
        
        [_musicPlayer setQueueWithItemCollection: mediaItemCollection];
        [_musicPlayer play];
    }
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void) mediaPickerDidCancel: (MPMediaPickerController *) mediaPicker
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)btnBack:(id)sender
{
    [_musicPlayer skipToPreviousItem];
}

- (IBAction)btnPlay:(id)sender
{
    if ([_musicPlayer playbackState] == MPMusicPlaybackStatePlaying) {
        [_musicPlayer pause];
        
    } else {
        [_musicPlayer play];
        
    }
}
- (IBAction)btnNext:(id)sender
{
    [_musicPlayer skipToNextItem];
}

- (IBAction)volumeChanged:(id)sender
{
    [_musicPlayer setVolume:[_oltSlider value]];
}
@end
