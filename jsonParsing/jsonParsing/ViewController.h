//
//  ViewController.h
//  jsonParsing
//
//  Created by Rahul Chopra on 09/06/17.
//  Copyright © 2017 Rahul Chopra. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) NSMutableArray *mArrContact;

- (void) getContactsInfo;

@property (weak, nonatomic) IBOutlet UITableView *myTableView;

@end

