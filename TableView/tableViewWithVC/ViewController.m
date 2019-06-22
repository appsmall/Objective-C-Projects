//
//  ViewController.m
//  tableViewWithSearchBar
//
//  Created by Rahul Chopra on 16/05/17.
//  Copyright © 2017 Rahul Chopra. All rights reserved.
//

#import "ViewController.h"
#import "ViewControllerWithImage.h"

@interface ViewController ()
{
    NSArray *devices;
    NSArray *images;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.myTableView.dataSource = self;
    self.myTableView.delegate = self;
    
    devices = @[@"iPhone",@"iPad",@"iPod Touch",@"iWatch",@"iTV",@"iMac"];
    images = @[@"iPhone",@"iPad",@"iPod Touch",@"iWatch",@"iTV",@"iMac"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return devices.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *cellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    
    cell.textLabel.text = devices[indexPath.row];
    
    return cell;
    
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    ViewControllerWithImage *vc = [segue destinationViewController];
    
    NSIndexPath *indexPath = [self.myTableView indexPathForSelectedRow];
    
    vc.strImage = images[indexPath.row];
    
    vc.title = devices[indexPath.row];
    
}


@end
