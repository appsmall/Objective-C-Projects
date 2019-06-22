//
//  BuyVC.h
//  Photo Gift
//
//  Created by Rahul Chopra on 10/10/17.
//  Copyright © 2017 learn2ios. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BuyVC : UIViewController<UICollectionViewDelegate,UICollectionViewDataSource>

@property (weak, nonatomic) IBOutlet UIImageView *imgProd;

@property (weak, nonatomic) IBOutlet UILabel *lblProdName;
@property NSString *strProdName;

@property (weak, nonatomic) IBOutlet UILabel *lblProdPrc;
@property NSString *strProdPrc;

@property (weak, nonatomic) IBOutlet UILabel *lblProdMRP;
@property (weak, nonatomic) IBOutlet UILabel *lblProdDisc;


- (IBAction)btnBack:(id)sender;
@property (weak, nonatomic)
IBOutlet UICollectionView *collectionFrame;
@property (weak, nonatomic) IBOutlet UICollectionView *collectionFrameColor;

@end
