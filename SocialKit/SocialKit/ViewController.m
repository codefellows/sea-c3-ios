//
//  ViewController.m
//  SocialKit
//
//  Created by John Clem on 11/21/13.
//  Copyright (c) 2013 Code Fellows. All rights reserved.
//

#import "ViewController.h"
#import <Social/Social.h>

@interface ViewController ()

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

- (IBAction)shareAction:(UIBarButtonItem *)sender
{
    SLComposeViewController *shareViewController;
    
    switch (sender.tag) {
        case 0: // Facebook
            shareViewController = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeFacebook];
            [shareViewController setInitialText:@"Check out my Social.framework on Facebook"];
            [shareViewController addImage:_imageView.image];
            [shareViewController addURL:[NSURL URLWithString:@"http://facebook.com/mydemoapp"]];
            [self presentViewController:shareViewController animated:YES completion:nil];
            break;
        case 1: // Twitter
            shareViewController = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeTwitter];
            [shareViewController setInitialText:@"Check out my Social.framework on Twitter"];
            [shareViewController addImage:_imageView.image];
            [shareViewController addURL:[NSURL URLWithString:@"http://twitter.com/mydemoapp"]];
            [self presentViewController:shareViewController animated:YES completion:nil];
            break;
        case 2: // Activity
            
            break;
    }
    
}

@end
