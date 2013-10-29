//
//  PostsDataController.h
//  Delegates and Categories
//
//  Created by John Clem on 10/28/13.
//  Copyright (c) 2013 Code Fellows. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PostsDataController : NSObject

@property (nonatomic) NSArray *posts;

+(PostsDataController *)sharedController;

@end
