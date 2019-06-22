//
//  CollectionVC.h
//  CollectionViewRashmi
//
//  Created by Rahul Chopra on 13/09/17.
//  Copyright © 2017 UncleBar. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CollectionVC : UIViewController<UICollectionViewDelegate,UICollectionViewDataSource>

@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@end
