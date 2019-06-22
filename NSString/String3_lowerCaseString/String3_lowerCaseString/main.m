//
//  main.m
//  String3_lowerCaseString
//
//  Created by Rahul Chopra on 17/04/17.
//  Copyright © 2017 Rahul Chopra. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

int main() {
    NSString *str1 = @"RAHUL CHOPRA";
    NSString *str2;
    str2 = [str1 lowercaseString];
    NSLog(@"Lower Case String is : %@",str2);
    return 0;
}
