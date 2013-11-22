//
//  CFViewController.h
//  FacebookSSODemo
//
//  Created by Code Fellows on 11/21/13.
//  Copyright (c) 2013 Code Fellows. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CFViewController : UIViewController

@property (nonatomic, weak) IBOutlet UILabel *nameLabel;

- (IBAction)openSession:(id)sender;

@end
