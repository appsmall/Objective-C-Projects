//
//  TableViewCell.h
//  TVWithMultiComp
//
//  Created by Rahul Chopra on 21/05/17.
//  Copyright © 2017 Rahul Chopra. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *recipeImage;
@property (weak, nonatomic) IBOutlet UILabel *recipeLbl;

@end
