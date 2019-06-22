//
//  ViewController.h
//  TVWithMCWithMoreView
//
//  Created by Rahul Chopra on 22/05/17.
//  Copyright © 2017 Rahul Chopra. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *recipeViewImage;
@property NSString *strViewImage;

@property (weak, nonatomic) IBOutlet UITextView *recipeTextView;
@property NSString *strTextView;

@end
