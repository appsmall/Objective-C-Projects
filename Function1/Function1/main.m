//
//  main.m
//  Function1
//
//  Created by Rahul Chopra on 25/04/17.
//  Copyright © 2017 Rahul Chopra. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

int main(int argc, char * argv[]) {
    @autoreleasepool {
        
            int num1 = 100;
            int num2 = 200;
            int ret;
            
            SampleClass *s = [[SampleClass alloc] init];
            
            ret = [s max: num1 secondNumber: num2];
            NSLog(@"Max value is : %d", ret);
        
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
