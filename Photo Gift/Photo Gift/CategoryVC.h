//
//  CategoryVC.h
//  Photo Gift
//
//  Created by Rahul Chopra on 27/10/17.
//  Copyright © 2017 learn2ios. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LJAutoScrollView.h"

@interface CategoryVC : UIViewController<UITableViewDataSource,UITableViewDelegate, LJAutoScrollViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end
