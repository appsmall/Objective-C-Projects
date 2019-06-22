//
//  main.m
//  String11_stringByAppendingFormat
//
//  Created by Rahul Chopra on 17/04/17.
//  Copyright © 2017 Rahul Chopra. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

int main() {
    NSString *str1 = @"My name is ";
    NSString *str2;
    str2 = [str1 stringByAppendingFormat: @"Rahul Chopra"];
    NSLog(@"%@",str2);
    return 0;
}
