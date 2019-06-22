//
//  main.m
//  String1
//
//  Created by Rahul Chopra on 15/04/17.
//  Copyright © 2017 Rahul Chopra. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

int main() {
    
    
    //NSString *str = @"Hello World";
            //OR
    NSString *str = [NSString stringWithFormat: @"Hello World"];
    
    
    NSLog(@"Printed string is : %@",str);
    return 0;
}
