//
//  AppDelegate.h
//  jsonParsing
//
//  Created by Rahul Chopra on 09/06/17.
//  Copyright © 2017 Rahul Chopra. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

+ (void) downloadDataFromURL: (NSURL *)url withCompletionHandler: (void(^)(NSData *data))completionHandler;


@end

