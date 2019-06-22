//
//  PageViewController.m
//  PageVC
//
//  Created by Rahul Chopra on 26/05/17.
//  Copyright © 2017 Rahul Chopra. All rights reserved.
//

#import "PageViewController.h"
#import "ViewController.h"

@interface PageViewController ()
{
    NSArray *devices;
}
@end

@implementation PageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.dataSource = self;
    
    devices = @[@"iPhone",@"iPad"];
    
    ViewController *initialVC = [self viewControllerAtIndex: 0];
    
    NSArray *viewControllers = [NSArray arrayWithObject: initialVC];
    
    [self setViewControllers:viewControllers direction:UIPageViewControllerNavigationDirectionForward animated:YES completion:nil];
    
}

//User-defined helper method
- (ViewController *) viewControllerAtIndex : (NSUInteger )index {
    
    ViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"ViewController"];
    
    vc.strName = devices[index];
    vc.strImage = devices[index];
    vc.pageIndex = index;
    
    return vc;
}

- (nullable UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController {
    
    NSUInteger index = ((ViewController *) viewController).pageIndex;
        if (index == 0 || index == NSNotFound) {
            return nil;
        }
        index -= 1;
    
    return [self viewControllerAtIndex:index];
}

- (nullable UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController{
    
    NSUInteger index = ((ViewController *) viewController).pageIndex;
    if (index == NSNotFound) {
        return nil;
    }
    index += 1;
    if (index == devices.count) {
        return nil;
    }
    
    return [self viewControllerAtIndex:index];
    
}


-(NSInteger)presentationCountForPageViewController:(UIPageViewController *)pageViewController {
    return devices.count;
}
-(NSInteger)presentationIndexForPageViewController:(UIPageViewController *)pageViewController {
    return 0;
}


@end
