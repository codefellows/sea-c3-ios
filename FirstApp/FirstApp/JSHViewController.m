//
//  JSHViewController.m
//  FirstApp
//
//  Created by Joshua Buchacher on 10/17/13.
//  Copyright (c) 2013 Code Fellows. All rights reserved.
//

#import "JSHViewController.h"
#import "JSHSecondViewController.h"

@implementation JSHViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
//    [_mySwitch setOn: NO];
}

- (IBAction)unwindToRootViewController:(UIStoryboardSegue *)segue
{
    NSString *sourceVCString = [[(JSHSecondViewController *)segue.sourceViewController myTextField] text];
    [_myLabel setText:sourceVCString];
}
//- (void)setMySwitch:(UISwitch *)mySwitch
//{
//    if (mySwitch != _mySwitch)
//    {
//        _mySwitch = mySwitch;
//    }
//}
//
//- (UISwitch *)mySwitch
//{
//    return self.mySwitch;
//}

- (IBAction)logSwitchStatus:(id)sender
{
    NSLog(@"Switch is: %d", _mySwitch.isOn);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
