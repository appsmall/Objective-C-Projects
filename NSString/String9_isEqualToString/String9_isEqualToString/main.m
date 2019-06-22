//
//  main.m
//  String9_isEqualToString
//
//  Created by Rahul Chopra on 17/04/17.
//  Copyright © 2017 Rahul Chopra. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

int main() {
    NSString *str1 = @"Hello";
    NSString *str2 = @"World";
    BOOL result;
    result = [str1 isEqualToString: str2];
    if(!result) {
        NSLog(@"String is not matched");
    }
    return 0;
}
