//
//  ViewController.m
//  ObjectiveQuestion
//
//  Created by Rahul Chopra on 26/10/17.
//  Copyright © 2017 learn2ios. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [_txtView setHidden:YES];
}

- (IBAction)btnImg1:(id)sender
{
    [_img1 setImage:[UIImage imageNamed:@"select.png"] forState:UIControlStateNormal];
    [_img2 setImage:[UIImage imageNamed:@"unselect.png"] forState:UIControlStateNormal];
    [_img3 setImage:[UIImage imageNamed:@"unselect.png"] forState:UIControlStateNormal];
    [_img4 setImage:[UIImage imageNamed:@"unselect.png"] forState:UIControlStateNormal];
    
    [_txtView setEditable:NO];
}

- (IBAction)btnImg2:(id)sender
{
    [_img2 setImage:[UIImage imageNamed:@"select.png"] forState:UIControlStateNormal];
    [_img1 setImage:[UIImage imageNamed:@"unselect.png"] forState:UIControlStateNormal];
    [_img3 setImage:[UIImage imageNamed:@"unselect.png"] forState:UIControlStateNormal];
    [_img4 setImage:[UIImage imageNamed:@"unselect.png"] forState:UIControlStateNormal];
    
    [_txtView setEditable:NO];
}

- (IBAction)btnImg3:(id)sender
{
    [_img3 setImage:[UIImage imageNamed:@"select.png"] forState:UIControlStateNormal];
    [_img2 setImage:[UIImage imageNamed:@"unselect.png"] forState:UIControlStateNormal];
    [_img1 setImage:[UIImage imageNamed:@"unselect.png"] forState:UIControlStateNormal];
    [_img4 setImage:[UIImage imageNamed:@"unselect.png"] forState:UIControlStateNormal];
    
    [_txtView setEditable:NO];
}

- (IBAction)btnImg4:(id)sender
{
    [_img4 setImage:[UIImage imageNamed:@"select.png"] forState:UIControlStateNormal];
    [_img1 setImage:[UIImage imageNamed:@"unselect.png"] forState:UIControlStateNormal];
    [_img2 setImage:[UIImage imageNamed:@"unselect.png"] forState:UIControlStateNormal];
    [_img3 setImage:[UIImage imageNamed:@"unselect.png"] forState:UIControlStateNormal];
    
    [_txtView setHidden:NO];
    [_txtView setEditable:YES];
}
@end
