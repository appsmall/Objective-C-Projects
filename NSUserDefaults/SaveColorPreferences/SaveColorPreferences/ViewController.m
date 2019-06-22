//
//  ViewController.m
//  SaveColorPreferences
//
//  Created by Rahul Chopra on 03/10/17.
//  Copyright © 2017 UncleBar. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSInteger myColorInt = [[NSUserDefaults standardUserDefaults] integerForKey:@"colorPreference"];
    
    [self.segColorPref setSelectedSegmentIndex:myColorInt];
    
    switch (myColorInt) {
        case 0:
            [self.view setBackgroundColor: [UIColor redColor]];
            break;
        case 1:
            [self.view setBackgroundColor: [UIColor yellowColor]];
            break;
        case 2:
            [self.view setBackgroundColor: [UIColor greenColor]];
            break;
            
        default:
            break;
    }
}

- (IBAction)btnChangeColor
{
    switch (self.segColorPref.selectedSegmentIndex) {
        case 0:
            [self.view setBackgroundColor: [UIColor redColor]];
            break;
        case 1:
            [self.view setBackgroundColor: [UIColor yellowColor]];
            break;
        case 2:
            [self.view setBackgroundColor: [UIColor greenColor]];
            break;
            
        default:
            break;
    }
}

- (IBAction)btnSaveColor
{
    [[NSUserDefaults standardUserDefaults] setInteger: self.segColorPref.selectedSegmentIndex forKey:@"colorPreference"];
}
@end
