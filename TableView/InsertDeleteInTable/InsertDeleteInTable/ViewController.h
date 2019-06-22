//
//  ViewController.h
//  InsertDeleteInTable
//
//  Created by Rahul Chopra on 07/07/17.
//  Copyright © 2017 Rahul Chopra. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) IBOutlet UITextField *txtData;
- (IBAction)btnAdd:(id)sender;
- (IBAction)btnDelete:(id)sender;

@property (strong, nonatomic) IBOutlet UITableView *tableView;

@end

