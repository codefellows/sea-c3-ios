//
//  Event.h
//  Helios Demo
//
//  Created by John Clem on 12/2/13.
//  Copyright (c) 2013 Code Fellows. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Event : NSManagedObject

@property (nonatomic, retain) NSDate * timeStamp;

@end
