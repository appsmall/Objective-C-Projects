//
//  DTCustomColoredAccessory.h
//  Collapse Cell
//
//  Created by Rahul Chopra on 01/09/17.
//  Copyright © 2017 Learn2iOSCenter. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum
{
    DTCustomColoredAccessoryTypeRight = 0,
    DTCustomColoredAccessoryTypeUp,
    DTCustomColoredAccessoryTypeDown
} DTCustomColoredAccessoryType;

@interface DTCustomColoredAccessory : UIControl

{
    UIColor *_accessoryColor;
    UIColor *_highlightedColor;
    
    DTCustomColoredAccessoryType _type;
}

@property (nonatomic, retain) UIColor *accessoryColor;
@property (nonatomic, retain) UIColor *highlightedColor;

@property (nonatomic, assign)  DTCustomColoredAccessoryType type;

+ (DTCustomColoredAccessory *)accessoryWithColor:(UIColor *)color type:(DTCustomColoredAccessoryType)type;


@end
