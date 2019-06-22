//
//  main.m
//  String13_floatValue
//
//  Created by Rahul Chopra on 17/04/17.
//  Copyright © 2017 Rahul Chopra. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

int main() {
    NSString *str = @"3.14";
    float num;
    num = [str floatValue];
    NSLog(@"The conversion of String to Float is: %ld",num);
    return 0;
}
