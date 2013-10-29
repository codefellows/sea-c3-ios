//
//  PostEditViewController.h
//  Posts
//
//  Created by John Clem on 10/28/13.
//  Copyright (c) 2013 Code Fellows. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Post.h"

@protocol PostEditViewControllerDelegate <NSObject>

@optional

- (void)reloadTheTable;

@end

@interface PostEditViewController : UIViewController

@property (nonatomic, weak) Post *post;
@property (nonatomic, weak) IBOutlet UITextField *userNameField, *titleField, *contentField, *timeStampField;

@property (nonatomic, weak) id<PostEditViewControllerDelegate> delegate;

- (IBAction)savePost:(id)sender;

@end
