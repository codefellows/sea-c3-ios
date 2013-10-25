//
//  JSHViewController.h
//  FirstApp
//
//  Created by Joshua Buchacher on 10/17/13.
//  Copyright (c) 2013 Code Fellows. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JSHViewController : UIViewController

@property (nonatomic, weak) IBOutlet UISwitch *mySwitch;
@property (nonatomic, weak) IBOutlet UILabel *myLabel;

- (IBAction)logSwitchStatus:(id)sender;

@end