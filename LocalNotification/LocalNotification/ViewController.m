//
//  ViewController.m
//  LocalNotification
//
//  Created by Rahul Chopra on 12/06/17.
//  Copyright © 2017 Rahul Chopra. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    
}
@end

@implementation ViewController

    BOOL isGrantedNotificationAccess = false;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UNUserNotificationCenter *center = [UNUserNotificationCenter currentNotificationCenter];
    
    UNAuthorizationOptions options = UNAuthorizationOptionAlert+UNAuthorizationOptionSound+UNAuthorizationOptionBadge;
    
    [center requestAuthorizationWithOptions: options completionHandler: ^(BOOL granted, NSError * _Nullable error) {
        
        isGrantedNotificationAccess = granted;
        
    }];
}


- (IBAction)btnNotification:(id)sender {
    
    UNUserNotificationCenter *center = [UNUserNotificationCenter currentNotificationCenter];
    
    UNMutableNotificationContent *content = [[UNMutableNotificationContent alloc] init];
    
    content.title = @"Reminder";
    content.subtitle = @"Whatsapp Message";
    content.body = @"Hi";
    content.sound = [UNNotificationSound defaultSound];
    
    //setting the notification trigger
    UNTimeIntervalNotificationTrigger *trigger = [UNTimeIntervalNotificationTrigger triggerWithTimeInterval:10 repeats: NO];
    
    //setting the request for the notification
    UNNotificationRequest *request = [UNNotificationRequest requestWithIdentifier: @"UYLocalNotification" content: content trigger:trigger];
    
    //add notification for current notification center
    [center addNotificationRequest: request withCompletionHandler:nil];
    
    
}
@end
