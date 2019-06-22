//
//  ViewController.m
//  imageSliderCVC
//
//  Created by Rahul Chopra on 13/08/17.
//  Copyright © 2017 Bar Uncle. All rights reserved.
//

#import "ViewController.h"
#import "AutoScrollCell.h"

@interface ViewController () <UICollectionViewDelegate,UICollectionViewDataSource>
{
    NSArray *slideImage;
    AutoScrollCell *cellVC;
    
}
@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    self.collectionView.delegate = self;
    self.collectionView.dataSource = self;
    slideImage = [NSArray arrayWithObjects:@"s1.jpg",@"s2.jpg",@"s3.jpg",nil];
    
    cellVC = [[AutoScrollCell alloc] init];
    
    [UIView animateWithDuration:2.0 delay:0 options:UIViewAnimationOptionCurveEaseIn+UIViewAnimationOptionRepeat animations:^{
        
    } completion:nil];
}

- (void)viewDidAppear:(BOOL)animated
{
    
}

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return slideImage.count;
}
-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    AutoScrollCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    
    cell.imgView.image = [UIImage imageNamed: slideImage[indexPath.row]];
    
    return cell;
}



@end
