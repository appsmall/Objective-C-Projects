//
//  ViewController.h
//  Alert
//
//  Created by Rahul Chopra on 18/05/17.
//  Copyright © 2017 Rahul Chopra. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIAlertViewDelegate>
@property (weak, nonatomic) IBOutlet UILabel *lblText;

- (IBAction)btn:(id)sender;


@end

