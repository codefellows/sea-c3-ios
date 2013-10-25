//
//  SecondViewController.m
//  ProtocolDemo
//
//  Created by Code Fellows on 10/24/13.
//  Copyright (c) 2013 Code Fellows. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)dismissSecondViewController:(id)sender
{
    [self.delegate nameTextEntered: self.nameTextField.text];
    [self.presentingViewController dismissViewControllerAnimated: YES
                                                      completion: nil];
}

@end
