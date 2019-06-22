//
//  NavigationViewController.m
//  sideBarMenu
//
//  Created by Rahul Chopra on 22/07/17.
//  Copyright © 2017 learn2iOSCenter. All rights reserved.
//

// This class is TableViewController class.

#import "NavigationViewController.h"
#import "SWRevealViewController.h"

@interface NavigationViewController ()
{
    NSArray *menu;
}
@end

@implementation NavigationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    menu = @[@"first",@"second",@"third", @"fourth", @"fifth"];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return menu.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSString *cellIdentifier = [menu objectAtIndex: indexPath.row];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: cellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    
    cell.textLabel.text = menu[indexPath.row];
    
    return cell;
}


#pragma mark - Navigation

//When we click on side bar menu item...So,this is segue to those items.

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ( [segue isKindOfClass: [SWRevealViewControllerSegue class]])
    {
        SWRevealViewControllerSegue *swSegue = (SWRevealViewControllerSegue*)segue;
        
        swSegue.performBlock = ^(SWRevealViewControllerSegue* rvc_segue, UIViewController* svc, UIViewController* dvc)
        {
            UINavigationController *navController = (UINavigationController*)self.revealViewController.frontViewController;
            
            [navController setViewControllers: @[dvc] animated:NO];
            
            [self.revealViewController setFrontViewPosition:FrontViewPositionLeft animated:YES];
        };
    }
}


@end
