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

- (IBAction)logSwitchStatus:(id)sender;

@end