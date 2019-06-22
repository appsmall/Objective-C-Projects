//
//  HomeVCOK.h
//  Photo Gift
//
//  Created by Rahul Chopra on 18/10/17.
//  Copyright © 2017 learn2ios. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LJAutoScrollView.h"

@interface HomeVCOK : UIViewController<LJAutoScrollViewDelegate, UICollectionViewDataSource,UICollectionViewDelegate>

@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@property (weak, nonatomic) IBOutlet UICollectionView *collectionView2;

@property (weak, nonatomic) IBOutlet UICollectionView *collectionView3;

@property (nonatomic, strong) NSArray *frmName;

@property NSString *str;

@end
