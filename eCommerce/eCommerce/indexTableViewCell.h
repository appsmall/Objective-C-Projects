//
//  indexTableViewCell.h
//  eCommerce
//
//  Created by Rahul Chopra on 31/05/17.
//  Copyright © 2017 Rahul Chopra. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface indexTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *indexImg;
@property (weak, nonatomic) IBOutlet UILabel *indexLbl;

@property NSString *indexStrImage;
@property NSString *indexStrLabel;

@end
