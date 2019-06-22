//
//  ViewController.m
//  apiIntegration
//
//  Created by Rahul Chopra on 21/06/17.
//  Copyright © 2017 Rahul Chopra. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    FBSDKLoginButton *loginButton = [[FBSDKLoginButton alloc] init];
    
    // Optional: Place the button in the center of your view.
    loginButton.center = self.view.center;
    
    [self.view addSubview:loginButton];
    
    loginButton.delegate = self;
    
    loginButton.readPermissions =
    @[@"public_profile", @"email", @"user_friends"];
}

- (void) accessDetails {
    
    if ([FBSDKAccessToken currentAccessToken])
    {
        NSLog(@"User is logged in");
        
        
        [[[FBSDKGraphRequest alloc] initWithGraphPath:@"me" parameters:@{@"fields": @"picture.height(100).width(100), name,  email"}]
         startWithCompletionHandler:^(FBSDKGraphRequestConnection *connection, id result, NSError *error) {
             if (!error)
             {
                 NSLog(@"fetched user:%@", result);
                 NSMutableDictionary *data=[[NSMutableDictionary alloc]init];
                 data=result;
                 
                 
                 //   fbId.text=[data valueForKey:@"id"];
                 self.lblName.text = [data valueForKey:@"name"];
                 self.lblEmail.text = [data valueForKey:@"email"];
                 
                 NSDictionary *dictionary = (NSDictionary *) result;
                 
                 NSDictionary *data3 = [dictionary objectForKey: @"picture"];
                 NSDictionary *data2 = [data3 objectForKey: @"data"];
                 NSString *photoURL = (NSString *)[data2 objectForKey:@"url"];
                 
                 NSData *imgData = [NSData dataWithContentsOfURL: [NSURL URLWithString: photoURL]];
                 
                 _showImg.image = [UIImage imageWithData: imgData];
             }
             
         }];
    }
}
    
- (void)loginButton:(FBSDKLoginButton *)loginButton didCompleteWithResult:(FBSDKLoginManagerLoginResult *)result error:(NSError *)error{
    [self accessDetails];
}

- (BOOL)loginButtonWillLogin:(FBSDKLoginButton *)loginButton {
    
    return true;
}

- (void)loginButtonDidLogOut:(FBSDKLoginButton *)loginButton {
    
    self.lblName.text = @"";
    self.lblEmail.text = @"";
    self.showImg.image = [UIImage imageNamed:@""];
}


@end
