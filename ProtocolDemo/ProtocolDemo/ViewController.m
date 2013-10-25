//
//  ViewController.m
//  ProtocolDemo
//
//  Created by Code Fellows on 10/24/13.
//  Copyright (c) 2013 Code Fellows. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController () <JSHTextEnteredDelegate>

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString: @"myModalSegue"])
    {
        ((SecondViewController *)segue.destinationViewController).delegate = self;
    }
}

- (void)nameTextEntered:(NSString *)textEntered
{
    NSLog(@"%@", textEntered);
}

@end
