//
//  Category2TVCell.m
//  Photo Gift
//
//  Created by Rahul Chopra on 30/10/17.
//  Copyright © 2017 learn2ios. All rights reserved.
//

#import "Category2TVCell.h"

@implementation Category2TVCell

- (void)awakeFromNib {
    [super awakeFromNib];
    
    _imgCategory.layer.borderColor = [UIColor darkGrayColor].CGColor;
    _imgCategory.layer.borderWidth = 2;
    _imgCategory.layer.cornerRadius = 1;
    
    CAGradientLayer *gradientMask = [CAGradientLayer layer];
    gradientMask.frame = self.imageView.bounds;
    gradientMask.colors = @[(id)[UIColor orangeColor].CGColor,
                            (id)[UIColor clearColor].CGColor];
    self.imageView.layer.mask = gradientMask;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
