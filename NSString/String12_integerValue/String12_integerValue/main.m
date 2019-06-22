//
//  main.m
//  String12_integerValue
//
//  Created by Rahul Chopra on 17/04/17.
//  Copyright © 2017 Rahul Chopra. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

int main() {
    NSString *str = @"150";
    NSInteger num;
    num = [str integerValue];
    NSLog(@"The conversion of String to Integer is: %d",num);
    return 0;
}
