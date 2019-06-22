//
//  NavigateViewController.m
//  sliderMenu
//
//  Created by Rahul Chopra on 22/07/17.
//  Copyright © 2017 learn2iOSCenter. All rights reserved.
//

#import "NavigateViewController.h"
#import "SWRevealViewController.h"

@interface NavigateViewController ()
{
    NSArray *menu;
}
@end

@implementation NavigateViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    menu = @[@"one", @"two", @"three", @"four"];
    
    self.tableView.separatorColor = [UIColor grayColor];
    self.view.layer.borderWidth = 0.6;
    self.view.layer.borderColor = [UIColor lightGrayColor].CGColor;
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return menu.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *cellIdentifier = [menu objectAtIndex:indexPath.row];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    
    cell.backgroundColor = [UIColor clearColor];
    tableView.separatorColor = [UIColor blackColor];
    
    return cell;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return @"I am on left";
}

- (void)tableView:(UITableView *)tableView willDisplayHeaderView:(UIView *)view forSection:(NSInteger)section
{
    UITableViewHeaderFooterView *header = (UITableViewHeaderFooterView *)view;
    header.textLabel.textColor = [UIColor whiteColor];
    header.textLabel.font = [UIFont boldSystemFontOfSize:18];
    CGRect headerFrame = header.frame;
    header.textLabel.frame = headerFrame;
    header.textLabel.text= @"I am on Left";
    header.textLabel.textAlignment = NSTextAlignmentLeft;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
