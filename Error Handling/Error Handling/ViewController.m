//
//  ViewController.m
//  Error Handling
//
//  Created by John Clem on 11/18/13.
//  Copyright (c) 2013 Code Fellows. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSURL *imageURL = [NSURL URLWithString:@"http://upload.wikimedia.org/wikipedia/commons/b/b1/Oosterpark_field_of_grass.JPG"];
    
    NSURLRequest *imageRequest = [NSURLRequest requestWithURL:imageURL];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
