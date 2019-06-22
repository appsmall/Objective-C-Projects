//
//  FurthurInfoVC.h
//  Photo Gift
//
//  Created by Rahul Chopra on 11/10/17.
//  Copyright © 2017 learn2ios. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FurthurInfoVC : UIViewController

@property (weak, nonatomic) IBOutlet UISegmentedControl *segCtrl;
@property (weak, nonatomic) IBOutlet UITextView *textView;
- (IBAction)segChange:(id)sender;

- (IBAction)btnBack:(id)sender;

@property (weak, nonatomic) IBOutlet UIImageView *imgProd;
@property NSString *strProdName;
@property (weak, nonatomic) IBOutlet UILabel *lblProdName;
@property (weak, nonatomic) IBOutlet UILabel *lblProdPrc;
@property NSString *strProdPrice;
@end
