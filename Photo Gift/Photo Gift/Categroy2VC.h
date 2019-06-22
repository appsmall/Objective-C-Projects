//
//  Categroy2VC.h
//  Photo Gift
//
//  Created by Rahul Chopra on 30/10/17.
//  Copyright © 2017 learn2ios. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Categroy2VC : UIViewController <UITableViewDataSource,UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property NSString *strName;


- (IBAction)btnBack:(id)sender;
- (IBAction)btnSelect:(id)sender;

@end
