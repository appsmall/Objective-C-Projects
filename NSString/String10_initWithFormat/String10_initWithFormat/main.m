//
//  main.m
//  String10_initWithFormat
//
//  Created by Rahul Chopra on 17/04/17.
//  Copyright © 2017 Rahul Chopra. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

int main() {
    NSString *str1 = @"Hello";
    NSString *str2 = @"World";
    NSString *str3;
    str3 = [[NSString alloc]initWithFormat: @"%@,%@",str1,str2];
    NSLog(@"The initWithFormat string is : %@", str3);
          return 0;
}
