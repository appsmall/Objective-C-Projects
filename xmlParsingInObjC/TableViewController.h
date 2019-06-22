//
//  TableViewController.h
//  xmlParsingInObjC
//
//  Created by Rahul Chopra on 08/06/17.
//  Copyright © 2017 Rahul Chopra. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewController : UITableViewController <NSXMLParserDelegate>

@property (strong, nonatomic) NSMutableArray *mArrXMLData;
@property (strong, nonatomic) NSMutableDictionary *mDictXML;
@property (strong, nonatomic) NSMutableString *mXMLString;

@end
