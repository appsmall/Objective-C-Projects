//
//  RotatingFrameCVCell.h
//  Photo Gift
//
//  Created by Rahul Chopra on 09/10/17.
//  Copyright © 2017 learn2ios. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RotatingFrameCVCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UIImageView *imgRotate;
@property (weak, nonatomic) IBOutlet UILabel *lblRotateName;
@property (weak, nonatomic) IBOutlet UILabel *lblRotatePrice;

@end
