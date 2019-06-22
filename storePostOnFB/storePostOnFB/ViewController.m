//
//  ViewController.m
//  storePostOnFB
//
//  Created by Rahul Chopra on 31/07/17.
//  Copyright © 2017 BarUncle. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSArray *postData;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    postData = @[@"message1", @"message2", @"message3"];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return postData.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier: @"postCell" forIndexPath: indexPath];
    
    cell.textLabel.text = postData[indexPath.row];
    
    return cell;
}


@end
