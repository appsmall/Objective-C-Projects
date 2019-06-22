//
//  ViewController.m
//  InsertDeleteInTable
//
//  Created by Rahul Chopra on 07/07/17.
//  Copyright © 2017 Rahul Chopra. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSMutableArray *arrayData;
    NSMutableArray *arrayToDelete;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    arrayData = [[NSMutableArray alloc] init];
    arrayToDelete = [[NSMutableArray alloc] init];
    
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (arrayData.count > 0)
    {
        return arrayData.count;
    }
    else
    {
        return 0;
    }

}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    static NSString *cellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    
    cell.textLabel.text = [NSString stringWithFormat: @"%@", arrayData[indexPath.row]];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    [arrayToDelete addObject: arrayData[indexPath.row]];
}

- (void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    [arrayToDelete removeObject: arrayData[indexPath.row]];
}

- (UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    return 3;
}

- (IBAction)btnAdd:(id)sender {
    
    [arrayData addObject: _txtData.text];
    [self.tableView reloadData];
    self.txtData.text = @"";
}

- (IBAction)btnDelete:(id)sender {
    
    
   // sender.selectedIndex = !sender.selectedIndex;
    [self.tableView setEditing:[sender selectedIndex] animated:YES];
    
    if (arrayToDelete.count) {
        for (NSString *str in arrayData) {
            [arrayData removeObject: str];
            [self.tableView reloadData];
        }
        [arrayToDelete removeAllObjects];
    }
}
@end
