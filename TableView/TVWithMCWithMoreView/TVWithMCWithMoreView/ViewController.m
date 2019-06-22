//
//  ViewController.m
//  TVWithMCWithMoreView
//
//  Created by Rahul Chopra on 22/05/17.
//  Copyright © 2017 Rahul Chopra. All rights reserved.
//

#import "ViewController.h"
#import "TableViewController.h"

@interface ViewController ()
{
    NSArray *recipes;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.recipeViewImage.image = [UIImage imageNamed: self.strViewImage];
    
    self.recipeTextView.text = _strTextView;

   // self.lblText.text = _strText;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
