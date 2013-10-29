//
//  PostTableViewCell.h
//  Posts
//
//  Created by John Clem on 10/28/13.
//  Copyright (c) 2013 Code Fellows. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Post.h"

@interface PostTableViewCell : UITableViewCell

@property (nonatomic, weak) Post *post;
@property (nonatomic, weak) IBOutlet UILabel *userNameLabel, *postTitleLabel, *timeStampLabel, *contentLabel;

- (void)setLabelValuesWithPost:(Post *)post;

@end
