//
//  OffersVC.m
//  Photo Gift
//
//  Created by Rahul Chopra on 27/10/17.
//  Copyright © 2017 learn2ios. All rights reserved.
//

#import "OffersVC.h"
#import "OfferCVCell.h"

@interface OffersVC ()
{
    NSArray *arrOffer;
    NSArray *arrOfferNames;
}
@end

@implementation OffersVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.collectionView.dataSource = self;
    self.collectionView.delegate = self;
    
    arrOffer = @[@"10%OFF", @"20%OFF",@"25%OFF",@"50%OFF",@"60%OFF"];
    arrOfferNames = @[@"Photo Mugs, Bouquets....",@"Photo Frames....", @"Cushions,Wall Scenes....",@"Ring,Bottles,Caps....",@"Mobile Covers, Calenders, Laptop Wallpapers...."];
    
}

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return arrOffer.count;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    OfferCVCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cellOffer" forIndexPath:indexPath];
    
    cell.imgOffer.image = [UIImage imageNamed: arrOffer[indexPath.row]];
    cell.lblOffer.text = arrOfferNames[indexPath.row];
    
    return cell;
}

@end
