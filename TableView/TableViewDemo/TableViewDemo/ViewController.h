//
//  ViewController.h
//  TableViewDemo
//
//  Created by Rahul Chopra on 09/05/17.
//  Copyright © 2017 Rahul Chopra. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *deviceImages;

@property NSString *strImage;

@property (weak, nonatomic) IBOutlet UILabel *lblDevices;
@property NSString *lblName;

@end
