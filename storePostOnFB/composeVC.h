//
//  composeVC.h
//  storePostOnFB
//
//  Created by Rahul Chopra on 31/07/17.
//  Copyright © 2017 BarUncle. All rights reserved.
//

#import <UIKit/UIKit.h>
@import Firebase;
@import FirebaseDatabase;

@interface composeVC : UIViewController

@property (strong, nonatomic) IBOutlet UITextView *composeTxtView;

@property (nonatomic, strong) FIRDatabaseReference *ref;

- (IBAction)btnCancel:(id)sender;
- (IBAction)btnAdd:(id)sender;

@end
