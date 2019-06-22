//
//  ViewController.h
//  storePostOnFB
//
//  Created by Rahul Chopra on 31/07/17.
//  Copyright © 2017 BarUncle. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) IBOutlet UITableView *tableView;

@end

