//
//  ViewController.h
//  sliderExample
//
//  Created by Rahul Chopra on 10/06/17.
//  Copyright © 2017 Rahul Chopra. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *lblValue;
- (IBAction)sliderValueChanged:(id)sender;

@end

