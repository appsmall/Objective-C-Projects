//
//  FurthurInfoVC.m
//  Photo Gift
//
//  Created by Rahul Chopra on 11/10/17.
//  Copyright © 2017 learn2ios. All rights reserved.
//

#import "FurthurInfoVC.h"

@interface FurthurInfoVC ()
{
    UILabel *lblFeature;
    UILabel *lblProdName;
    UILabel *lblProdDimension;
    UILabel *lblProdQuan;
    UILabel *lblProdDel;
    
    UILabel *lblGen;
    UILabel *lblPkg;
    UILabel *lblModel;
    UILabel *lblFrmSize;
    UILabel *lblFrmColor;
    UILabel *lblSuitFor;
    UILabel *lblFrmMat;
    
    UILabel *lblWarr;
    UILabel *lblWarrSum;
    UILabel *lblCovWarr;
    UILabel *lblNotCovWarr;
    UILabel *lblDomWarr;
    
}
@end

@implementation FurthurInfoVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _imgProd.image = [UIImage imageNamed: _strProdName];
    _lblProdName.text = _strProdName;
    _lblProdPrc.text = _strProdPrice;
}

- (IBAction)segChange:(id)sender
{
    switch (_segCtrl.selectedSegmentIndex) {
        case 0:
            [self.textView setHidden:NO];
            [lblFeature setHidden: YES];
            [lblProdQuan setHidden: YES];
            [lblProdDimension setHidden: YES];
            [lblProdName setHidden: YES];
            [lblProdDel setHidden: YES];
            [lblGen setHidden: YES];
            [lblPkg setHidden: YES];
            [lblModel setHidden: YES];
            [lblFrmColor setHidden: YES];
            [lblFrmSize setHidden: YES];
            [lblSuitFor setHidden: YES];
            [lblFrmMat setHidden: YES];
            [lblWarr setHidden: YES];
            [lblCovWarr setHidden: YES];
            [lblNotCovWarr setHidden: YES];
            [lblWarrSum setHidden: YES];
            [lblDomWarr setHidden: YES];
            break;
        case 1: {
            [self.textView setHidden:YES];
            lblFeature = [[UILabel alloc]initWithFrame:CGRectMake(0, 240, 500, 23)];
            lblFeature.font = [UIFont systemFontOfSize:14 weight:UIFontWeightBold];
            lblFeature.backgroundColor = [UIColor grayColor];
            lblFeature.text = @"    Key Features";
            
            lblProdName = [[UILabel alloc]initWithFrame:CGRectMake(0, 280, 500, 19)];
            lblProdName.font = [UIFont systemFontOfSize:15];
            lblProdName.text = @"    Product Name:";
            
            lblProdDimension = [[UILabel alloc]initWithFrame:CGRectMake(0, 305, 500, 19)];
            lblProdDimension.font = [UIFont systemFontOfSize:15];
            lblProdDimension.text = @"    Dimensions:";
            
            lblProdQuan = [[UILabel alloc]initWithFrame:CGRectMake(0, 330, 500, 19)];
            lblProdQuan.font = [UIFont systemFontOfSize:15];
            lblProdQuan.text = @"    Quantity:";
            
            lblProdDel = [[UILabel alloc]initWithFrame:CGRectMake(0, 355, 500, 19)];
            lblProdDel.font = [UIFont systemFontOfSize:15];
            lblProdDel.text = @"    Delivery:";
            
            [self.view addSubview:lblFeature];
            [self.view addSubview:lblProdName];
            [self.view addSubview:lblProdDimension];
            [self.view addSubview:lblProdQuan];
            [self.view addSubview:lblProdDel];
            
            lblGen = [[UILabel alloc]initWithFrame:CGRectMake(0, 390, 500, 23)];
            lblGen.font = [UIFont systemFontOfSize:14 weight:UIFontWeightBold];
            lblGen.backgroundColor = [UIColor grayColor];
            lblGen.text = @"    General";
            [self.view addSubview:lblGen];
            
            lblPkg = [[UILabel alloc]initWithFrame:CGRectMake(0, 430, 500, 19)];
            lblPkg.font = [UIFont systemFontOfSize:15];
            lblPkg.text = @"    Sales Package:";
            
            lblModel = [[UILabel alloc]initWithFrame:CGRectMake(0, 455, 500, 19)];
            lblModel.font = [UIFont systemFontOfSize:15];
            lblModel.text = @"    Model Number:";
            
            lblFrmSize = [[UILabel alloc]initWithFrame:CGRectMake(0, 480, 500, 19)];
            lblFrmSize.font = [UIFont systemFontOfSize:15];
            lblFrmSize.text = @"    Frame Size:";
            
            lblFrmColor = [[UILabel alloc]initWithFrame:CGRectMake(0, 505, 500, 19)];
            lblFrmColor.font = [UIFont systemFontOfSize:15];
            lblFrmColor.text = @"    Frame Color:";
            
            lblSuitFor = [[UILabel alloc]initWithFrame:CGRectMake(0, 530, 500, 19)];
            lblSuitFor.font = [UIFont systemFontOfSize:15];
            lblSuitFor.text = @"    Suitable For:";
            
            lblFrmMat = [[UILabel alloc]initWithFrame:CGRectMake(0, 555, 500, 19)];
            lblFrmMat.font = [UIFont systemFontOfSize:15];
            lblFrmMat.text = @"    Frame Material:";
            
            [self.view addSubview:lblPkg];
            [self.view addSubview:lblModel];
            [self.view addSubview:lblFrmSize];
            [self.view addSubview:lblFrmColor];
            [self.view addSubview:lblSuitFor];
            [self.view addSubview:lblFrmMat];
            
            lblWarr = [[UILabel alloc]initWithFrame:CGRectMake(0, 595, 500, 23)];
            lblWarr.font = [UIFont systemFontOfSize:14 weight:UIFontWeightBold];
            lblWarr.backgroundColor = [UIColor grayColor];
            lblWarr.text = @"    Warranty";
            [self.view addSubview:lblWarr];
            
            lblWarrSum = [[UILabel alloc]initWithFrame:CGRectMake(0, 620, 500, 19)];
            lblWarrSum.font = [UIFont systemFontOfSize:15];
            lblWarrSum.text = @"    Warranty Summary:";
            
            lblCovWarr = [[UILabel alloc]initWithFrame:CGRectMake(0, 645, 500, 19)];
            lblCovWarr.font = [UIFont systemFontOfSize:15];
            lblCovWarr.text = @"    Covered in Warranty:";
            
            lblNotCovWarr = [[UILabel alloc]initWithFrame:CGRectMake(0, 670, 500, 19)];
            lblNotCovWarr.font = [UIFont systemFontOfSize:15];
            lblNotCovWarr.text = @"   Not Covered in Warranty:";
            
            lblDomWarr = [[UILabel alloc]initWithFrame:CGRectMake(0, 695, 500, 19)];
            lblDomWarr.font = [UIFont systemFontOfSize:15];
            lblDomWarr.text = @"   Domestic Warranty:";
            
            [self.view addSubview:lblWarrSum];
            [self.view addSubview:lblCovWarr];
            [self.view addSubview:lblNotCovWarr];
            [self.view addSubview:lblDomWarr];
            
            break; }
            
        default:
            break;
    }
}

- (IBAction)btnBack:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}


@end
