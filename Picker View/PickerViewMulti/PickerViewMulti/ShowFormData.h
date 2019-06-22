//
//  ShowFormData.h
//  PickerViewMulti
//
//  Created by Rahul Chopra on 14/10/17.
//  Copyright © 2017 learn2ios. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ShowFormData : UIViewController

@property NSString *strName;
@property NSString *strDOB;
@property NSString *strAge;
@property (weak, nonatomic) IBOutlet UILabel *lblName;
@property (weak, nonatomic) IBOutlet UILabel *lblDOB;
@property (weak, nonatomic) IBOutlet UILabel *lblAge;

@end
