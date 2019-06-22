//
//  ViewController.h
//  coreDataFun
//
//  Created by Rahul Chopra on 05/06/17.
//  Copyright © 2017 Rahul Chopra. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>


@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *txtName;
@property (weak, nonatomic) IBOutlet UITextField *txtAge;
- (IBAction)btnSave:(id)sender;

@property (nonatomic) NSManagedObjectContext *context;
@property (nonatomic, retain) NSMutableArray *arrContact;

- (NSManagedObjectContext *) managedObjectcontext;

@end

