//
//  HomeVCOK.m
//  Photo Gift
//
//  Created by Rahul Chopra on 18/10/17.
//  Copyright © 2017 learn2ios. All rights reserved.
//

#import "HomeVCOK.h"
#import "HomeCVCell.h"
#import "MugCVCell.h"
#import "BouquetCVCell.h"
#import "PhotoFrameVC.h"
#import "RotatingFrameCVCell.h"

@interface HomeVCOK ()
{
    NSArray *frmPrice;
    NSArray *mugName;
    NSArray *mugPrice;
    NSArray *bouqName;
    NSArray *bouqPrice;
    NSArray *rotateName;
    NSArray *rotatePrice;
}
@property (nonatomic, strong) LJAutoScrollView *autoScrollView;
@end

static const CGFloat kAutoScrollViewHeight = 200;

@implementation HomeVCOK
@synthesize frmName,str;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [[[self navigationController]navigationBar]setHidden:YES];
    
    //Auto Scroll the images on News Feed...
    self.autoScrollView = [[LJAutoScrollView alloc] initWithFrame:CGRectMake(0, 20, self.view.frame.size.width, kAutoScrollViewHeight)];
    self.autoScrollView.delegate = self;
    self.autoScrollView.itemSize = CGSizeMake(self.view.frame.size.width, kAutoScrollViewHeight);
    self.autoScrollView.scrollInterval = 3.0f;
    [self.view addSubview:self.autoScrollView];
    
    _collectionView.dataSource = self;
    _collectionView.delegate = self;
    _collectionView2.dataSource = self;
    _collectionView2.delegate = self;
    _collectionView3.dataSource = self;
    _collectionView3.delegate = self;
    
    
    frmName = @[@"Baby Frame (Pink & Blue Color)",@"My Sweet Baby",@"Christmas Frame"];
    frmPrice = @[@"$999", @"$799", @"$1200"];
    mugName = @[@"Love Scotland",@"Steel Mug",@"White Mug",@"Black Mug"];
    mugPrice = @[@"$299",@"$399",@"$199",@"$199"];
    bouqName = @[@"Birthday Bouquet",@"Anniversary Bouquet 1",@"Anniversary Bouquet 2",@"Occassional Bouquet"];
    bouqPrice = @[@"$699",@"$899",@"$1099",@"$799"];
    rotateName = @[@"Taobao Rotating Frame",@"Rotating Ferris Wheel",@"Rotate Standing Frame",@"Rotate Standing Frame 2",@"Rotate Cube Frame"];
    rotatePrice = @[@"$199",@"$149",@"$199",@"$259", @"$160"];
}

//Auto Scroll View...
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.autoScrollView startAutoScroll];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    [self.autoScrollView stopAutoScroll];
}

- (UIView *)autoScrollView:(LJAutoScrollView *)autoScrollView customViewForIndex:(NSInteger)index
{
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, kAutoScrollViewHeight)];
    [imageView setContentMode:UIViewContentModeScaleToFill];
    
    NSString *imageName = [NSString stringWithFormat:@"S%ld.jpg", index+1];
    [imageView setImage:[UIImage imageNamed:imageName]];
    return imageView;
    
}

- (NSInteger)numberOfPagesInAutoScrollView:(LJAutoScrollView *)autoScrollView
{
    return 5;
}

- (void)autoScrollView:(LJAutoScrollView *)autoScrollView didSelectItemAtIndex:(NSInteger)index
{
    NSLog(@"select item at index:%@", @(index));
}


-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    if (collectionView == self.collectionView) {
        return [frmName count];
    }
    else if (collectionView == self.collectionView2)
    {
        return mugName.count;
    }
    else if (collectionView == self.collectionView3)
    {
        return bouqName.count;
    }
    else {
        return 0;
    }
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    if (collectionView == self.collectionView)
    {
        HomeCVCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
        
        cell.imgFrame.image = [UIImage imageNamed: frmName[indexPath.row]];
        cell.lblFName.text = frmName[indexPath.row];
        cell.lblFPrice.text = frmPrice[indexPath.row];
        return cell;
    }
    
    else if (collectionView == _collectionView2)
    {
        MugCVCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell2" forIndexPath:indexPath];
        
        cell.imgMug.image = [UIImage imageNamed: mugName[indexPath.row]];
        cell.lblMug.text = mugName[indexPath.row];
        cell.lblMugPrc.text = mugPrice[indexPath.row];
        return cell;
    }
    else if (collectionView == _collectionView3)
    {
        BouquetCVCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell3" forIndexPath:indexPath];
        
        cell.imgBouq.image = [UIImage imageNamed: bouqName[indexPath.row]];
        cell.lblBouqName.text = bouqName[indexPath.row];
        cell.lblBouqPrc.text = bouqPrice[indexPath.row];
        return cell;
    }
    else {
        return nil;
    }
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    if (collectionView == _collectionView)
    {
        PhotoFrameVC *photoVC = [self.storyboard instantiateViewControllerWithIdentifier:@"PhotoVC"];
        [self.navigationController pushViewController:photoVC animated:true];
        NSIndexPath *indexPath = [[_collectionView indexPathsForSelectedItems]lastObject];
        str = frmName[indexPath.row];
        photoVC.strPFrame = frmName[indexPath.row];
        photoVC.strPPrc = frmPrice[indexPath.row];
    }
    else if (collectionView == _collectionView2)
    {
        PhotoFrameVC *photoVC = [self.storyboard instantiateViewControllerWithIdentifier:@"PhotoVC"];
        [self.navigationController pushViewController:photoVC animated:true];
        
        str = mugName[indexPath.row];
        photoVC.strPFrame = mugName[indexPath.row];
        photoVC.strPPrc = mugPrice[indexPath.row];
    }
    
    else{
        
    }
}




@end
