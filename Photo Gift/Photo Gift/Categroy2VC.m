//
//  Categroy2VC.m
//  Photo Gift
//
//  Created by Rahul Chopra on 30/10/17.
//  Copyright © 2017 learn2ios. All rights reserved.
//

#import "Categroy2VC.h"
#import "Category2TVCell.h"
#import "CategoryVC.h"
#import "PhotoFrameVC.h"

@interface Categroy2VC ()
{
    NSArray *arrWedding;
    NSArray *arrCorporate;
}
@end

@implementation Categroy2VC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    
    arrWedding = @[@"Wedd",@"Wedd2",@"Wedd3",@"Wedd4",@"Wedd5",@"Wedd6",@"Wedd7"];
    
    arrCorporate = @[@"Desk Item",@"Desk Watch",@"PenDrive 2",@"Pen 2",@"PenDrive 3",@"Pen 21",@"Pack of 3",@"PenDrive"];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSIndexPath *indexPath;
    if (indexPath.row == 0) {
        return arrWedding.count;
    }
    else if (indexPath.row == 1)
    {
        return arrCorporate.count;
    }
    else
    {
        return 0;
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    Category2TVCell *cell = [_tableView dequeueReusableCellWithIdentifier:@"cellCategory2" forIndexPath:indexPath];
    
    if(indexPath.row == 0)
    {
        cell.imgCategory.image = [UIImage imageNamed: arrWedding[indexPath.row]];
        cell.lblGName.text = arrWedding[indexPath.row];
    
        return cell;
    }
    else
    {
        return [Category2TVCell new];
    }
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 225;
}

- (IBAction)btnBack:(id)sender
{
    [self.navigationController popViewControllerAnimated:true];
}

- (IBAction)btnSelect:(id)sender
{
    PhotoFrameVC *photoVC = [self.storyboard instantiateViewControllerWithIdentifier:@"PhotoVC"];
    [self.navigationController pushViewController:photoVC animated:YES];
}
@end
