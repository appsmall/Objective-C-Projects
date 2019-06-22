//
//  ViewController.m
//  Function1
//
//  Created by Rahul Chopra on 25/04/17.
//  Copyright © 2017 Rahul Chopra. All rights reserved.
//

#import "ViewController.h"

@interface SampleClass: NSObject

@end

@implementation SampleClass

-(int)max: (int)a secondNumber:(int)b {
    int result;
    if(a>b) {
        result = a;
    }
    else {
        result = b;
    }
    return result;
}

@end
