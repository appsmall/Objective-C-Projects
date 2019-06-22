//
//  main.m
//  String8_characterAtIndex
//
//  Created by Rahul Chopra on 17/04/17.
//  Copyright © 2017 Rahul Chopra. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

int main() {
    NSString *str = @"Hello World";
    unichar ch;
    ch = [str characterAtIndex: 0];
    NSLog(@"The Character at 0 index is : %c", ch);
    return 0;
}
