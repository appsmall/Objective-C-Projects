//
//  ViewController.h
//  ObjectiveQuestion
//
//  Created by Rahul Chopra on 26/10/17.
//  Copyright © 2017 learn2ios. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIButton *img1;
@property (weak, nonatomic) IBOutlet UIButton *img2;
@property (weak, nonatomic) IBOutlet UIButton *img3;
@property (weak, nonatomic) IBOutlet UIButton *img4;

@property (weak, nonatomic) IBOutlet UITextView *txtView;

- (IBAction)btnImg1:(id)sender;
- (IBAction)btnImg2:(id)sender;
- (IBAction)btnImg3:(id)sender;
- (IBAction)btnImg4:(id)sender;

@end

