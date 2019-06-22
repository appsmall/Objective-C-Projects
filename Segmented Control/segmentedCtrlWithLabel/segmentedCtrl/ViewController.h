//
//  ViewController.h
//  segmentedCtrl
//
//  Created by Rahul Chopra on 16/05/17.
//  Copyright © 2017 Rahul Chopra. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UISegmentedControl *segmCtrl;
- (IBAction)valueChange:(id)sender;

@property (weak, nonatomic) IBOutlet UILabel *textLabel;

@end

