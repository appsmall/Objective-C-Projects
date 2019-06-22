//
//  main.m
//  String6_hasSuffix
//
//  Created by Rahul Chopra on 17/04/17.
//  Copyright © 2017 Rahul Chopra. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

int main() {
    NSString *str1 = @"This is my book";
    BOOL result;
    result = [str1 hasSuffix: @"book"];
    if(result) {
        NSLog(@"String is matched");
    }
    return 0;
}
