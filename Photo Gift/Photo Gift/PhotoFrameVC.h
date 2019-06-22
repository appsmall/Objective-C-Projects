//
//  PhotoFrameVC.h
//  Photo Gift
//
//  Created by Rahul Chopra on 06/10/17.
//  Copyright © 2017 learn2ios. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PhotoFrameVC : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *imgPFrame;
@property NSString *strPFrame;

@property (weak, nonatomic) IBOutlet UILabel *lblPFrameName;

@property (weak, nonatomic) IBOutlet UILabel *lblPPrc;
@property NSString *strPPrc;

@property (weak, nonatomic) IBOutlet UITextView *tvPFrame;

- (IBAction)btnBack:(id)sender;


@property (weak, nonatomic) IBOutlet UIImageView *img1;
@property (weak, nonatomic) IBOutlet UIImageView *img2;
@property (weak, nonatomic) IBOutlet UIImageView *img3;


@property (strong, nonatomic) IBOutlet UILabel *lblMRPrice;


- (IBAction)btnBuy:(id)sender;

- (IBAction)btnFurtherInfo:(id)sender;

@end
