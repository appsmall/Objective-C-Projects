//
//  ViewController.h
//  progressBar
//
//  Created by Rahul Chopra on 01/06/17.
//  Copyright © 2017 Rahul Chopra. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIProgressView *progressBar;
@property (weak, nonatomic) IBOutlet UILabel *lblValue;

@property (nonatomic) NSTimer *myTimer;
- (IBAction)btnStart:(id)sender;

@end

