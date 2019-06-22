//
//  main.m
//  String5_hasPrefix
//
//  Created by Rahul Chopra on 17/04/17.
//  Copyright © 2017 Rahul Chopra. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

int main() {
    NSString *str1 = @"I am Rahul Chopra";
    BOOL result;
    result = [str1 hasPrefix: @"I"];
    if(result) {
        NSLog(@"String is matched");
    }
    return 0;
}
