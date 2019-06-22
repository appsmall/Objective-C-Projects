//
//  ViewController.h
//  stepperExample
//
//  Created by Rahul Chopra on 09/06/17.
//  Copyright © 2017 Rahul Chopra. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *stepperLabel;
@property (weak, nonatomic) IBOutlet UIStepper *stepperOutlet;
- (IBAction)stepperAction:(id)sender;

@end

