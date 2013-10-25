//
//  CODECookie.h
//  MVCDemo
//
//  Created by Code Fellows on 10/21/13.
//  Copyright (c) 2013 Code Fellows. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CODECookie : NSObject

@property (nonatomic) NSString *name;
@property (nonatomic) NSArray *ingredients;
@property (nonatomic) NSDecimalNumber *price;

@property (nonatomic, assign) BOOL glutenFree;

@end