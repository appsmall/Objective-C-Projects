//
//  CollectionViewCell.h
//  eCommerce
//
//  Created by Rahul Chopra on 31/05/17.
//  Copyright © 2017 Rahul Chopra. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CollectionViewCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UIImageView *collImage;
@property (weak, nonatomic) IBOutlet UILabel *collLabel;

@end
