//
//  RWTScaryBugData.h
//  VehicleApp
//
//  Created by Rahul Chopra on 13/09/17.
//  Copyright © 2017 UncleBar. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RWTScaryBugData : NSObject

@property (strong) NSString *title;
@property (assign) float rating;

-(id) initWithTitle: (NSString *)title rating:(float)rating;

@end
