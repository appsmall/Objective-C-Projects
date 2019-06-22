//
//  ViewController.m
//  coreDataFun
//
//  Created by Rahul Chopra on 05/06/17.
//  Copyright © 2017 Rahul Chopra. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"
#import "Person+CoreDataClass.h"

@interface ViewController ()
{
    AppDelegate *delegate;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _arrContact = [[NSMutableArray alloc]init];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSManagedObjectContext *) managedObjectcontext {
    
    delegate = (AppDelegate *)[[UIApplication sharedApplication]delegate];
    
    _context = [[delegate persistentContainer] viewContext];
    
    return _context;
}

- (IBAction)btnSave:(id)sender {
    _context = [self managedObjectcontext];
    NSManagedObject *task = [[Person alloc] initWithContext:_context];
    
    [task setValue:self.txtName.text forKey:@"name"];
    [task setValue:self.txtAge.text forKey:@"age"];
    
    NSString *strName = [task valueForKey: @"name"];
    NSString *strAge = [task valueForKey:@"age"];
    
    [_arrContact addObject: strName];
    [_arrContact addObject:strAge];
    
    [delegate saveContext];
    NSLog(@"Data Saved Successfully");
    
}
@end
