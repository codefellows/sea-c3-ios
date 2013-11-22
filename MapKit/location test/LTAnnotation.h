//
//  LTAnnotation.h
//  location test
//
//  Created by John Clem on 9/17/13.
//  Copyright (c) 2013 Code Fellows. All rights reserved.
//

#import <MapKit/MapKit.h>

@interface LTAnnotation : NSObject <MKAnnotation>

@property (nonatomic, assign)   CLLocationCoordinate2D  coordinate;
@property (nonatomic, copy)     NSString*               title;
@property (nonatomic, copy)     NSString*               subtitle;

@end
