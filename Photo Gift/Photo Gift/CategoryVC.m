//
//  CategoryVC.m
//  Photo Gift
//
//  Created by Rahul Chopra on 27/10/17.
//  Copyright © 2017 learn2ios. All rights reserved.
//

#import "CategoryVC.h"
#import "CategoryTVCell.h"
#import "Categroy2VC.h"

@interface CategoryVC ()
{
    NSArray *catName;
    
}
@property (nonatomic, strong) LJAutoScrollView *autoScrollView;
@end

static const CGFloat kAutoScrollViewHeight = 200;

@implementation CategoryVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //Auto Scroll the images on News Feed...
    self.autoScrollView = [[LJAutoScrollView alloc] initWithFrame:CGRectMake(0, 20, self.view.frame.size.width, kAutoScrollViewHeight)];
    self.autoScrollView.delegate = self;
    self.autoScrollView.itemSize = CGSizeMake(self.view.frame.size.width, kAutoScrollViewHeight);
    self.autoScrollView.scrollInterval = 3.0f;
    [self.view addSubview:self.autoScrollView];
    
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    
    catName = @[@"Wedding Gift",@"Corporate Gift",@"Vallentine Gift",@"Friendship Gift",@"Surprise Gift",@"Birthday Gift",@"Diwali Gift",@"New Year Gift",@"Rakshabandhan Gift"];
    
    
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
    
    NSString *imageName = [NSString stringWithFormat:@"GB%ld.jpg", index+1];
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

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return catName.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CategoryTVCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellCategory" forIndexPath:indexPath];
    
    cell.imgCategory.image = [UIImage imageNamed: catName[indexPath.row]];
    cell.lblCategory.text = catName[indexPath.row];
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
        Categroy2VC *cell = [self.storyboard instantiateViewControllerWithIdentifier:@"category2VC"];
        
        [self.navigationController pushViewController:cell animated:true];
    
}

@end
