//
//  ViewController.h
//  PageVC
//
//  Created by Rahul Chopra on 26/05/17.
//  Copyright © 2017 Rahul Chopra. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *deviceName;
@property (weak, nonatomic) IBOutlet UIImageView *deviceImg;


@property NSString *strName;
@property NSString *strImage;

@property NSUInteger pageIndex;

@end

