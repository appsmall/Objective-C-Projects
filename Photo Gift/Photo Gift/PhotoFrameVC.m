//
//  PhotoFrameVC.m
//  Photo Gift
//
//  Created by Rahul Chopra on 06/10/17.
//  Copyright © 2017 learn2ios. All rights reserved.
//

#import "PhotoFrameVC.h"
#import "HomeVCOK.h"
#import "BuyVC.h"
#import "FurthurInfoVC.h"

@interface PhotoFrameVC ()
{
}
@end

@implementation PhotoFrameVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _imgPFrame.image = [UIImage imageNamed: _strPFrame];
    _lblPFrameName.text = _strPFrame;
    _img1.image = [UIImage imageNamed: _strPFrame];
    _img1.layer.borderColor = [UIColor darkGrayColor].CGColor;
    _img1.layer.cornerRadius = 5;
    _img1.layer.borderWidth = 1.5;
    _img2.image = [UIImage imageNamed: _strPFrame];
    _img2.layer.borderColor = [UIColor darkGrayColor].CGColor;
    _img2.layer.cornerRadius = 5;
    _img2.layer.borderWidth = 1.5;
    _img3.image = [UIImage imageNamed: _strPFrame];
    _img3.layer.borderColor = [UIColor darkGrayColor].CGColor;
    _img3.layer.cornerRadius = 5;
    _img3.layer.borderWidth = 1.5;
    
    _lblPPrc.text = _strPPrc;
    
    
    
    CGSize expectedLabelSize = [_lblMRPrice.text sizeWithFont:_lblMRPrice.font constrainedToSize:_lblMRPrice.frame.size lineBreakMode:UILineBreakModeClip];
    
    UIView *viewUnderline = [[UIView alloc] init];
    viewUnderline.frame = CGRectMake(5, 9, expectedLabelSize.width, 1.4);
    viewUnderline.backgroundColor = [UIColor grayColor];
    [_lblMRPrice addSubview:viewUnderline];
    
}

- (IBAction)btnBack:(id)sender
{
   // [self.navigationController popViewControllerAnimated:YES];
}


- (IBAction)btnBuy:(id)sender
{
    BuyVC *buyVC = [self.storyboard instantiateViewControllerWithIdentifier:@"BuyVC"];
    
    buyVC.strProdName = _strPFrame;
    buyVC.strProdPrc = _strPPrc;
    
   // [self.navigationController pushViewController:buyVC animated:YES];
}

- (IBAction)btnFurtherInfo:(id)sender
{
    FurthurInfoVC *furtherInfo = [self.storyboard instantiateViewControllerWithIdentifier:@"FurthurInfo"];
    //[self.navigationController pushViewController:furtherInfo animated:YES];
    
    furtherInfo.strProdName = _strPFrame;
    furtherInfo.strProdPrice = _strPPrc;
}
@end
