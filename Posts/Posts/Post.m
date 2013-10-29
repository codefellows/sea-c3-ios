//
//  Post.m
//  Posts
//
//  Created by John Clem on 10/28/13.
//  Copyright (c) 2013 Code Fellows. All rights reserved.
//

#import "Post.h"

@implementation Post

- (instancetype)initWithUserName:(NSString *)userName andTitle:(NSString *)title andContent:(NSString *)content andDate:(NSDate *)timeStamp
{
    self = [super init];
    if (self) {
        self.userName = userName;
        self.title = title;
        self.content = content;
        self.timeStamp = timeStamp;
    }
    
    return self;
}

- (NSString *)stringFromDate:(NSDate *)incomingDate
{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"hh:mm a"];
    NSString *dateString = [dateFormatter stringFromDate:_timeStamp];
    return dateString;
}


@end
