//
//  ViewController.m
//  CollectionViewWithVC
//
//  Created by Rahul Chopra on 17/05/17.
//  Copyright © 2017 Rahul Chopra. All rights reserved.
//

#import "ViewController.h"
#import "CollectionViewCell.h"
#import "ImageViewController.h"

@interface ViewController ()
{
    NSArray *devices;
    NSArray *devImages;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    devices = @[@"iPhone", @"iPad", @"iPod Touch", @"iTV", @"iWatch"];
    devImages = @[@"iPhone", @"iPad", @"iPod Touch", @"iTV", @"iWatch"];
    _collView.dataSource = self;
    _collView.delegate = self;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return devices.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    
    CollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    
    cell.deviceImages.image = [UIImage imageNamed:devices[indexPath.row]];
    
    return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    ImageViewController *vc = [segue destinationViewController];
    NSIndexPath *indexPath = [[self.collView indexPathsForSelectedItems]lastObject];
    vc.strImage = devImages[indexPath.row];
    
}


@end
