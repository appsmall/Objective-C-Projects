//
//  TableViewCell.h
//  Collapse Cell
//
//  Created by Rahul Chopra on 31/08/17.
//  Copyright © 2017 Learn2iOSCenter. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIView *firstView;
@property (weak, nonatomic) IBOutlet UILabel *lblHeader;
@property (weak, nonatomic) IBOutlet UIView *secondView;
@property (weak, nonatomic) IBOutlet UILabel *lblField;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *secondViewConstraint;

@end
