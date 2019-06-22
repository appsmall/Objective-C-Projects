//
//  TableViewController.h
//  indexValOfCell
//
//  Created by Rahul Chopra on 18/08/17.
//  Copyright © 2017 Bar Uncle. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewController : UITableViewController <UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic) IBOutlet UITableView *tableViewSelectUnSelect;
- (IBAction)btnPlayAll:(id)sender;

@property (nonatomic,strong) NSMutableDictionary *dict;

@end
