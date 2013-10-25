//
//  UIImageView+Rounded.m
//  Delegates and Categories
//
//  Created by John Clem on 10/24/13.
//  Copyright (c) 2013 Code Fellows. All rights reserved.
//

#import "UIImageView+Rounded.h"

@implementation UIImageView (Rounded)

+ (UIImageView *)roundedImageViewWithFrame:(CGRect)frame
{
    UIImageView *theImageView = [[UIImageView alloc] initWithFrame:frame];
    
    theImageView.layer.cornerRadius = 80.f;
    theImageView.clipsToBounds = YES;
    
    return theImageView;
}

@end
