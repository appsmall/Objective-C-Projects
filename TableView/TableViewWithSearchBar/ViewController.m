//
//  ViewController.m
//  TableViewWithVC
//
//  Created by Rahul Chopra on 15/05/17.
//  Copyright © 2017 Rahul Chopra. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSArray *devices;
    NSMutableArray *filteredDevices;
    BOOL isFiltered;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _myTableView.dataSource = self;
    _myTableView.delegate = self;
    
    devices = [NSArray arrayWithObjects:@"iPhone",@"iPad",@"iPod",@"iWatch",@"iTV",@"iMac", nil];
    self.searchBar.delegate = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if(isFiltered){
        return filteredDevices.count;
    }
    return [devices count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *cellIdentifier = @"cellID";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:
                             cellIdentifier];
   
    if(isFiltered){
        cell.textLabel.text = [filteredDevices objectAtIndex:indexPath.row];
    }
    else {
    cell.textLabel.text = [devices objectAtIndex:indexPath.row];
    }
    //cell.textLabel.text = devices[indexPath.row];
    return cell;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}



#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    
}



- (void)searchBar:(UISearchBar *)searchBar textDidChange:(NSString *)searchText {
    if(searchText.length == 0)
    {
        isFiltered = FALSE;
    }
    else {
        isFiltered = TRUE;
        filteredDevices = [[NSMutableArray alloc] init];
        for (NSString *dev in devices)
        {
            NSRange nameRange = [dev rangeOfString:searchText options:NSCaseInsensitiveSearch];
            if(nameRange.location != NSNotFound)
            {
                [filteredDevices addObject:dev];
            }
        }
    }
    [self.myTableView reloadData];
}


@end
