//
//  PostsDataController.m
//  Delegates and Categories
//
//  Created by John Clem on 10/28/13.
//  Copyright (c) 2013 Code Fellows. All rights reserved.
//

#import "PostsDataController.h"

@implementation PostsDataController

+(PostsDataController *)sharedController {
    static dispatch_once_t pred;
    static PostsDataController *shared = nil;
    
    dispatch_once(&pred, ^{
        shared = [[PostsDataController alloc] init];
    });
    return shared;
}

@end
