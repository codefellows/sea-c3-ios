//
//  WDViewController.m
//  Fun With Views
//
//  Created by Aimee on 10/31/13.
//  Copyright (c) 2013 Web Diggity. All rights reserved.
//

#import "WDViewController.h"

@interface WDViewController ()

@end

@implementation WDViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // Another way to loop is...
//    for (UIView *view in self.view.subviews)
//    {
//        view.backgroundColor = [UIColor redColor];
//    }
    
    for (int i=0; i<5; i++) {
        
        CGFloat superviewWidth = self.view.frame.size.width;
        CGFloat xPos = superviewWidth/5*i;
        CGFloat yPos = 20;
        CGFloat width = superviewWidth/5;
        CGFloat height = superviewWidth/5;
        
        CGRect viewRect = CGRectMake(xPos, yPos, width, height);
        
        UIView *newView = [[UIView alloc]initWithFrame:viewRect];
        newView.backgroundColor = [UIColor redColor];
        [self.view addSubview:newView];
        
        UIView *childView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 20, 20)];
        childView.backgroundColor = [UIColor whiteColor];
        [newView addSubview:childView];

        [UIView animateWithDuration: 5.0
                              delay: 1.0
                            options: 0
                         animations:^{
                            
                             childView.backgroundColor = [UIColor redColor];
                             newView.backgroundColor = [UIColor yellowColor];
                             
                             newView.frame = self.view.frame;
                             
                         } completion:^(BOOL finished) {
                             [UIView animateWithDuration:5 delay: 0 options:UIViewAnimationOptionCurveEaseIn animations:^{
                                 for (UIView *view in self.view.subviews)
                                 {
                                     view.frame = CGRectZero;
                                 }
                             } completion:^(BOOL finished) {
                                 [childView removeFromSuperview];
                                 [newView removeFromSuperview];
                             }];
                         }];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
