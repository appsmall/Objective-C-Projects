//
//  main.m
//  Method k
//
//  Created by Rahul Chopra on 25/04/17.
//  Copyright © 2017 Rahul Chopra. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "ViewController.h"

int main(int argc, char * argv[]) {
    @autoreleasepool {
        int ret;
        
        ViewController *vc = [[ViewController alloc] init];
        
        ret = [vc max:200 secondNumber:100];
        
        NSLog(@"Max value is : %d", ret);
        
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
