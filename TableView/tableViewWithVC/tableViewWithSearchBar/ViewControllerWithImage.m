//
//  ViewControllerWithImage.m
//  tableViewWithSearchBar
//
//  Created by Rahul Chopra on 17/05/17.
//  Copyright © 2017 Rahul Chopra. All rights reserved.
//

#import "ViewControllerWithImage.h"

@interface ViewControllerWithImage ()

@end

@implementation ViewControllerWithImage

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.deviceImages.image = [UIImage imageNamed: self.strImage];
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
