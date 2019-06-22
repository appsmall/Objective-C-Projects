//
//  ViewController.h
//  sqLiteExample
//
//  Created by Rahul Chopra on 17/06/17.
//  Copyright © 2017 Rahul Chopra. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <sqlite3.h>


@interface ViewController : UIViewController

@property (nonatomic) sqlite3 *contactDB;
@property (strong, nonatomic) NSString *databasePath;

@property (weak, nonatomic) IBOutlet UITextField *txtName;
@property (weak, nonatomic) IBOutlet UITextField *txtAge;
@property (weak, nonatomic) IBOutlet UITextField *txtDOB;
@property (weak, nonatomic) IBOutlet UITextField *txtAddress;
@property (weak, nonatomic) IBOutlet UITextField *txtPhone;
@property (weak, nonatomic) IBOutlet UITextField *txtAlterPhone;

- (IBAction)btnSave:(id)sender;
- (IBAction)btnExit:(id)sender;
- (IBAction)btnFind:(id)sender;
- (IBAction)btnDelete:(id)sender;


@end

