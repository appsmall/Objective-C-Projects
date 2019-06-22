//
//  ViewController.h
//  cardGame
//
//  Created by Rahul Chopra on 03/07/17.
//  Copyright © 2017 Rahul Chopra. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *leftCardImage;
@property (weak, nonatomic) IBOutlet UIImageView *rightCardImage;
- (IBAction)btnPlay:(id)sender;

@property (weak, nonatomic) IBOutlet UILabel *lblPlayer;
@property (weak, nonatomic) IBOutlet UILabel *lblComputer;



@end

