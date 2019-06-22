//
//  composeVC.m
//  storePostOnFB
//
//  Created by Rahul Chopra on 31/07/17.
//  Copyright © 2017 BarUncle. All rights reserved.
//

#import "composeVC.h"

@interface composeVC ()

@end

@implementation composeVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.ref = [[FIRDatabase database] reference];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)btnCancel:(id)sender
{
    [self.presentingViewController dismissViewControllerAnimated:true completion:nil];
}

- (IBAction)btnAdd:(id)sender
{
    //Post the data to the Firebase...
    
    // [[[_ref child:@"posts"] childByAutoId] setValue:@"HelloWorld"];
    
    [[[_ref child:@"posts"] childByAutoId] setValue:_composeTxtView.text];
    
    [self.presentingViewController dismissViewControllerAnimated:true completion:nil];
}
@end
