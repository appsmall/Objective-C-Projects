//
//  BuyVC.m
//  Photo Gift
//
//  Created by Rahul Chopra on 10/10/17.
//  Copyright © 2017 learn2ios. All rights reserved.
//

#import "BuyVC.h"
#import "BuyCVCell.h"
#import "BuyFrameColorCVCell.h"
#import "PhotoFrameVC.h"

@interface BuyVC ()
{
    NSArray *frameSize;
    NSArray *frameColor;
    BuyCVCell *buyCell;
    BuyFrameColorCVCell *colorCell;
}
@end

@implementation BuyVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    buyCell = [[BuyCVCell alloc]init];
    buyCell.backgroundColor = [UIColor lightGrayColor];
    colorCell = [[BuyFrameColorCVCell alloc] init];
    colorCell.backgroundColor = [UIColor lightGrayColor];
    
    _imgProd.image = [UIImage imageNamed: _strProdName];
    _imgProd.layer.borderColor = [UIColor grayColor].CGColor;
    _imgProd.layer.borderWidth = 2;
    _imgProd.layer.cornerRadius = 10;
    _lblProdName.text = _strProdName;
    _lblProdPrc.text = _strProdPrc;
    
    frameSize = @[@"4*6",@"5*7",@"10*12",@"15*17",@"20*30",@"40*60"];
    _collectionFrame.dataSource = self;
    _collectionFrame.delegate = self;
    frameColor = @[@"Red",@"Silver",@"Gray",@"Blue",@"Gold",@"Magenta"];
    _collectionFrameColor.dataSource = self;
    _collectionFrameColor.delegate = self;
}

- (IBAction)btnBack:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return frameSize.count;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    
    if (collectionView == _collectionFrame) {
        BuyCVCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"BuyCell" forIndexPath:indexPath];
        cell.lblFrameSize.text = frameSize[indexPath.row];
        return cell;
    }
    else if (collectionView == _collectionFrameColor) {
        BuyFrameColorCVCell *colorCell = [collectionView dequeueReusableCellWithReuseIdentifier:@"BuyColorCell" forIndexPath:indexPath];
        colorCell.lblFrameColor.text = frameColor[indexPath.row];
        return colorCell;
    }
    else {
        return nil;
    }
}

-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    if (collectionView == _collectionFrame) {
        BuyCVCell *BuyCell = [collectionView cellForItemAtIndexPath:indexPath];
        BuyCell.lblFrameSize.backgroundColor = [UIColor grayColor];
    }
    else if (collectionView == _collectionFrameColor)
    {
        BuyFrameColorCVCell *BuyColorCell = [collectionView cellForItemAtIndexPath:indexPath];
        BuyColorCell.lblFrameColor.backgroundColor = [UIColor grayColor];
    }

}

-(void)collectionView:(UICollectionView *)collectionView didDeselectItemAtIndexPath:(NSIndexPath *)indexPath
{
    if (collectionView == _collectionFrame) {
        BuyCVCell *BuyCell = [collectionView cellForItemAtIndexPath:indexPath];
        BuyCell.lblFrameSize.backgroundColor = [UIColor lightGrayColor];
    }
    else if (collectionView == _collectionFrameColor)
    {
        BuyFrameColorCVCell *BuyColorCell = [collectionView cellForItemAtIndexPath:indexPath];
        BuyColorCell.lblFrameColor.backgroundColor = [UIColor lightGrayColor];
    }
}

@end
