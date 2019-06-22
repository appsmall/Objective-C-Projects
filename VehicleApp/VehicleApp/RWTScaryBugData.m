//
//  RWTScaryBugData.m
//  VehicleApp
//
//  Created by Rahul Chopra on 13/09/17.
//  Copyright © 2017 UncleBar. All rights reserved.
//

#import "RWTScaryBugData.h"


@implementation RWTScaryBugData


-(id) initWithTitle:(NSString *)title rating:(float)rating
{
    if ((self = [super init])) {
        _title = title;
        _rating = rating;
    }
    return self;
}

@end
