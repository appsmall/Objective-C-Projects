//
//  main.m
//  String7_NSUInteger
//
//  Created by Rahul Chopra on 17/04/17.
//  Copyright © 2017 Rahul Chopra. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

int main() {
    NSString *str = @"Hello World";
    NSUInteger num;
    num = [str length];
    NSLog(@"The length of %@ is %d",str,num);
    return 0;
}
