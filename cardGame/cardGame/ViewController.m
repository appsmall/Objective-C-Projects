//
//  ViewController.m
//  cardGame
//
//  Created by Rahul Chopra on 03/07/17.
//  Copyright © 2017 Rahul Chopra. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSArray *cardNames;
    NSUInteger leftScore;
    NSUInteger rightScore;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    cardNames = @[@"2_of_clubs",@"2_of_diamonds",@"2_of_hearts",@"2_of_spades"];
  //@[@"2_of_clubs",@"3_of_clubs",@"4_of_clubs",@"5_of_clubs",@"6_of_clubs",@"7_of_clubs",@"8_of_clubs",@"9_of_clubs",@"10_of_clubs",@"ace_of_clubs",@"jack_of_clubs2",@"king_of_clubs2",@"queen_of_clubs2",@"ace_of_diamonds",@"2_of_diamonds",@"3_of_diamonds",@"4_of_diamonds",@"5_of_diamonds",@"6_of_diamonds",@"7_of_diamonds",@"8_of_diamonds",@"9_of_diamonds",@"10_of_diamonds",@"jack_of_diamonds2",@"king_of_diamonds2",@"queen_of_diamonds2",@"ace_of_hearts",@"2_of_hearts",@"3_of_hearts",@"4_of_hearts",@"5_of_hearts",@"6_of_hearts",@"7_of_hearts",@"8_of_hearts",@"9_of_hearts",@"10_of_hearts",@"jack_of_hearts",@"king_of_hearts2",@"queen_of_hearts2",@"ace_of_spades"];
    
    leftScore = 0;
    rightScore = 0;
    
}

- (IBAction)btnPlay:(id)sender {
   
    
/*  Without using an array
 
    NSUInteger leftNumber = arc4random_uniform(8) + 2;
    NSString *strLeftNum = [NSString stringWithFormat: @("%ld_of_clubs"),leftNumber];
    _leftCardImage.image = [UIImage imageNamed: strLeftNum];
    
    
    
    NSUInteger rightNumber = arc4random_uniform(8) + 2;
    NSString *strRightNum = [NSString stringWithFormat: @("%ld_of_clubs"),rightNumber];
    _rightCardImage.image = [UIImage imageNamed: strRightNum];
*/
    
    
// Using an array
    
    //  For Left Side Card
    
    NSUInteger leftNumber = arc4random_uniform((uint32_t)cardNames.count);
    NSString *strLeftNum = [NSString stringWithFormat: @("%@"), cardNames[leftNumber]];
    NSLog(@"Hello %@", strLeftNum);
    
    _leftCardImage.image = [UIImage imageNamed: strLeftNum];
    
    
    
    //  For Right Side Card
    
    NSUInteger rightNumber = arc4random_uniform((uint32_t)cardNames.count);
    NSString *strRightNum = [NSString stringWithFormat: @("%@"), cardNames[rightNumber]];
    NSLog(@"Right Card: %@", strRightNum);
    
    _rightCardImage.image = [UIImage imageNamed: strRightNum];
    
    
    
    //Result Appears when user tapped on the button.
    
    if (leftNumber > rightNumber)
    {
        
        NSLog(@"Left Number is large");
        
        leftScore += 1;
        
        NSString *string = [NSString stringWithFormat: @"%ld", leftScore];
        _lblPlayer.text = string;

    }
    else if (leftNumber == rightNumber)
    {
        NSLog(@"Match is Tie");
    }
    else
    {
        NSLog(@"Right Number is large");
        
        rightScore += 1;
        
        NSString *strRight = [NSString stringWithFormat: @"%ld", rightScore];
        _lblComputer.text = strRight;
    }
    
}
@end
