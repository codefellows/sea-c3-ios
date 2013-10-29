//
//  SecondViewController.h
//  ProtocolDemo
//
//  Created by Code Fellows on 10/24/13.
//  Copyright (c) 2013 Code Fellows. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol JSHTextEnteredDelegate <NSObject>

@optional
- (void)nameTextEntered:(NSString *)textEntered;
@end

@interface SecondViewController : UIViewController

@property (nonatomic, weak) IBOutlet UITextField *nameTextField;

@property (nonatomic, weak) id<JSHTextEnteredDelegate> delegate;

- (IBAction)dismissSecondViewController:(id)sender;

@end
