//
//  CFViewController.m
//  FacebookSSODemo
//
//  Created by Code Fellows on 11/21/13.
//  Copyright (c) 2013 Code Fellows. All rights reserved.
//

#import "CFViewController.h"
#import <FacebookSDK/FacebookSDK.h>

@interface CFViewController ()

@end

@implementation CFViewController

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

#pragma mark - Facebook SDK

- (IBAction)openSession:(id)sender
{
//    NSArray *readPermissions = @[@"basic_info"];
//    
//    [FBSession openActiveSessionWithReadPermissions: readPermissions
//                                       allowLoginUI:YES
//                                  completionHandler:
//     ^(FBSession *session,
//       FBSessionState state, NSError *error)
//    {
//         [self sessionStateChanged:session state:state error:error];
//     }];
    
    [FBSession openActiveSessionWithPublishPermissions: @[@"publish_actions"]
defaultAudience: FBSessionDefaultAudienceEveryone allowLoginUI: YES completionHandler:^(FBSession *session, FBSessionState status, NSError *error)
    {
        [self sessionStateChanged: session state: status error: error];
    }];
}

- (void)sessionStateChanged:(FBSession *)session
                      state:(FBSessionState) state
                      error:(NSError *)error
{
    switch (state)
    {
        case FBSessionStateOpen:
        {
//            [FBRequestConnection startForMeWithCompletionHandler:^(FBRequestConnection *connection, id result, NSError *error)
//            {
//                self.nameLabel.text = [result objectForKey: @"name"];
//            }];
            
            
//            [FBRequestConnection startForPostOpenGraphObjectWithType: @"post"
//                                                               title: @"Test Post Title"
//                                                               image: nil
//                                                                 url: nil
//                                                         description: @"Some Description"
//                                                    objectProperties: nil
//                                                   completionHandler:^(FBRequestConnection *connection, id result, NSError *error)
//            {
//            
//        }];
            
            
            [FBRequestConnection startForPostStatusUpdate: @"I just updated my status" completionHandler:^(FBRequestConnection *connection, id result, NSError *error) {
                
                if (!error)
                {
                    NSLog(@"Successfully updated status");
                }
                else
                {
                    NSLog(@"Error: %@", error.localizedDescription);
                }
                
            }];
            
        }
            break;
        case FBSessionStateClosed:
        case FBSessionStateClosedLoginFailed:
        {
            
        }
            
            break;
    }
}

@end