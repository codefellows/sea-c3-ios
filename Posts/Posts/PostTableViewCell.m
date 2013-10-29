//
//  PostTableViewCell.m
//  Posts
//
//  Created by John Clem on 10/28/13.
//  Copyright (c) 2013 Code Fellows. All rights reserved.
//

#import "PostTableViewCell.h"

@implementation PostTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)setLabelValuesWithPost:(Post *)post
{
    _post = post;
    _userNameLabel.text = _post.userName;
    _postTitleLabel.text = _post.title;
    _contentLabel.text = _post.content;
    _timeStampLabel.text = [_post stringFromDate:_post.timeStamp];
}

@end
