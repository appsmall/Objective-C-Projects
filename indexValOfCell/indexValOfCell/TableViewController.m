//
//  TableViewController.m
//  indexValOfCell
//
//  Created by Rahul Chopra on 18/08/17.
//  Copyright © 2017 Bar Uncle. All rights reserved.
//

#import "TableViewController.h"
#import <AVFoundation/AVFoundation.h>
#import <AVKit/AVKit.h>

@interface TableViewController ()
{
    NSMutableArray *arrVal,*arrSelectedUnSelectedValues,*arrSelectedValues,*arrUnSelectedValues;
    NSMutableArray *arrVid;
    NSIndexPath *index;
    NSMutableArray *arrKey;
}
@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    arrVal = [[NSMutableArray alloc]initWithObjects:@"Aanch",@"Ikka",@"Light Camera Action",nil];
    arrVid = [[NSMutableArray alloc] initWithObjects:@"vid1",@"vid2",@"vid3", nil];
    arrKey = [[NSMutableArray alloc] initWithObjects:@"0",@"1",@"2", nil];
    
    arrSelectedUnSelectedValues= [[NSMutableArray alloc]init];
    arrSelectedValues = [[NSMutableArray alloc]init];
    arrUnSelectedValues = [[NSMutableArray alloc]init];
    
    for(int j=0;j<[arrVal count];j++)
    {
        [arrSelectedUnSelectedValues addObject:@"unselected"]; //As Default it is in UnSelected State
    }
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return arrVal.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    if(cell==nil)
    {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"Cell"];
    }
    if([[arrSelectedUnSelectedValues objectAtIndex:indexPath.row] isEqualToString:@"selected"])
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
    else
        cell.accessoryType = UITableViewCellAccessoryNone;
        cell.textLabel.text = [arrVal objectAtIndex:indexPath.row];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    @try
    {
        CGPoint touchPoint = [cell convertPoint:CGPointZero toView:_tableViewSelectUnSelect];
        NSIndexPath *indexPath = [_tableViewSelectUnSelect indexPathForRowAtPoint:touchPoint];
        NSLog(@"The arrSelectedUnSelectedValues  are %@",arrSelectedUnSelectedValues );
        NSString *strValue;
        
        if([arrSelectedUnSelectedValues count]==0)
        {
            for(int i=0; i<[arrVal count]; i++)
            {
                [arrSelectedUnSelectedValues addObject:@"unselected"];
            }
        }
        if([[arrSelectedUnSelectedValues objectAtIndex:indexPath.row] isEqualToString:@"selected"])
        {
            cell.accessoryType = UITableViewCellAccessoryNone;
            [arrSelectedUnSelectedValues replaceObjectAtIndex:indexPath.row withObject:@"unselected"];
            strValue = cell.textLabel.text;
            [arrUnSelectedValues addObject:strValue];
            NSLog(@"The arrUnSelectedValues are - %@",arrUnSelectedValues);
        }
        else
        {
            cell.accessoryType = UITableViewCellAccessoryCheckmark;
            
            [arrSelectedUnSelectedValues replaceObjectAtIndex:indexPath.row withObject:@"selected"];
            strValue = cell.textLabel.text;
            NSString *strIndex = [NSString stringWithFormat:@"%ld",(long)indexPath.row];
            [arrSelectedValues addObject:strValue];
            NSLog(@"The arrSelectedValues - %@",arrSelectedValues);
            NSLog(@"The arrSelectedIndex - %@",strIndex);
            
            NSMutableArray *selec;
            
            NSString *selectedIndex = [arrVal[indexPath.row] objectAtIndex:indexPath.row];
            // Add the selected item into the array
            [selec addObject:selectedIndex];
            
            NSLog(@"Index is:::::%@",selec);
            
            
            [self videoPlay];
        }
    }
    @catch (NSException *exception) {
        NSLog(@"The exception is-%@",exception);
    }
    
}

- (void) videoPlay
{
    
    NSURL *url1 = [[NSBundle mainBundle]URLForResource:@"vid1" withExtension:@"mp4"];
    AVPlayerItem *item1 = [AVPlayerItem playerItemWithURL: url1];
    
    NSURL *url2 = [[NSBundle mainBundle] URLForResource:@"vid2" withExtension:@"mp4"];
    AVPlayerItem *item2 = [AVPlayerItem playerItemWithURL: url2];
    
    AVQueuePlayer *player = [AVQueuePlayer queuePlayerWithItems:[NSArray arrayWithObjects:item1, item2, nil]];
    
    AVPlayerViewController *controller = [[AVPlayerViewController alloc] init];
    
    controller.player = player;
    controller.view.frame = self.view.bounds;
    [self showDetailViewController:controller sender:self];
    
    [player play];

}

- (IBAction)btnPlayAll:(id)sender
{
    /*
    NSURL *url1 = [[NSBundle mainBundle]URLForResource:@"vid1" withExtension:@"mp4"];
    AVPlayerItem *item1 = [AVPlayerItem playerItemWithURL: url1];
    
    NSURL *url2 = [[NSBundle mainBundle] URLForResource:@"vid2" withExtension:@"mp4"];
    AVPlayerItem *item2 = [AVPlayerItem playerItemWithURL: url2];

    AVQueuePlayer *player = [AVQueuePlayer queuePlayerWithItems:[NSArray arrayWithObjects:item1, item2, nil]];
    
    AVPlayerViewController *controller = [[AVPlayerViewController alloc] init];
    
    controller.player = player;
    controller.view.frame = self.view.bounds;
    [self showDetailViewController:controller sender:self];
    
    [player play]; */
}
@end
