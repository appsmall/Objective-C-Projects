//
//  ViewController.h
//  SaveColorPreferences
//
//  Created by Rahul Chopra on 03/10/17.
//  Copyright © 2017 UncleBar. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UISegmentedControl *segColorPref;
- (IBAction)btnChangeColor;
- (IBAction)btnSaveColor;

@end

