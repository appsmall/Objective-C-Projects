//
//  CollectionVC.m
//  CollectionViewRashmi
//
//  Created by Rahul Chopra on 13/09/17.
//  Copyright © 2017 UncleBar. All rights reserved.
//

#import "CollectionVC.h"
#import "CollectionViewCell.h"
#import "LoginVC.h"

@interface CollectionVC ()
{
    NSArray *btnCell1;
    NSArray *btnCell2;
    CollectionViewCell *cell;
    NSArray *dataSourceArray;
    BOOL traversedToLogin;
}
@end

@implementation CollectionVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _collectionView.dataSource = self;
    _collectionView.delegate = self;
    traversedToLogin = false;
    btnCell1 = @[@"Marriage",@"Citizenship",@"Place of Worship",@"Expatriate",@"Marriage Public Notice",@"Login"];
    
    btnCell2 = @[@"Marriage",@"Citizenship",@"Place of Worship",@"Expatriate",@"Marriage Public Notice",@"My Application",@"Notification",@"Payment History",@"Chat"];
    
    [[self.navigationController navigationBar] setHidden:true];
    
    dataSourceArray = btnCell1;
    
    
}



-(void)viewWillAppear:(BOOL)animated
{
    
    if (traversedToLogin)
    {
        dataSourceArray = btnCell2;

    }
    
    [self.collectionView reloadData];
    
    
    
}

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return dataSourceArray.count;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    
    cell.lblText.text = dataSourceArray[indexPath.row];
    
    return cell;
}

-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    if(indexPath.row == 5 && [cell.lblText.text  isEqual: @"Login"])
    {
        LoginVC *login = [self.storyboard instantiateViewControllerWithIdentifier:@"LoginVC"];
        traversedToLogin = true;
        [self.navigationController pushViewController:login animated:true];
    }
}

@end
