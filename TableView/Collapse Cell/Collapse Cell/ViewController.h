//
//  ViewController.h
//  Collapse Cell
//
//  Created by Rahul Chopra on 31/08/17.
//  Copyright © 2017 Learn2iOSCenter. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

