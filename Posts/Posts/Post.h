//
//  Post.h
//  Posts
//
//  Created by John Clem on 10/28/13.
//  Copyright (c) 2013 Code Fellows. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Post : NSObject

@property (nonatomic) NSString *userName, *title, *content;
@property (nonatomic) NSDate *timeStamp;

- (instancetype)initWithUserName:(NSString *)userName andTitle:(NSString *)title andContent:(NSString *)content andDate:(NSDate *)timeStamp;

- (NSString *)stringFromDate:(NSDate *)incomingDate;

@end
