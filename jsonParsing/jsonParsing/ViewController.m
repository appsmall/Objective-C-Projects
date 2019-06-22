//
//  ViewController.m
//  jsonParsing
//
//  Created by Rahul Chopra on 09/06/17.
//  Copyright © 2017 Rahul Chopra. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    _myTableView.dataSource = self;
    _myTableView.delegate = self;
    
    [self getContactsInfo];
    
}

- (void) getContactsInfo {
    
    NSURL *url = [NSURL URLWithString: @"http://api.androidhive.info/contacts/"];
    
    [AppDelegate downloadDataFromURL:url withCompletionHandler:^(NSData *data) {
        
        NSMutableDictionary *dict = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];
      //  NSLog(@"%@",dict);
        
        _mArrContact = dict[@"contacts" ];
        NSLog(@"%@", _mArrContact);
        
        for (NSDictionary *dictContact in _mArrContact) {
            NSLog(@"%@ %@", dictContact[@"name"], dictContact[@"email"]);
        }
        [self.mArrContact addObject:dict];
    }];
}

// TABLE VIEW

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.mArrContact.count;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *cellIdentifier = @"CellID";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    
    cell.textLabel.text = [[_mArrContact[indexPath.row] valueForKey:@"name"] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
    cell.detailTextLabel.text = [[_mArrContact[indexPath.row] valueForKey:@"email"] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
    return cell;
    
}

@end
