//
//  World.h
//  smallworld
//
//  Created by Chris Ledet on 9/23/11.
//  Copyright (c) 2011 Chris Ledet. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

@interface World : NSObject {
    NSArray* friends;
}

@property (retain) NSArray* friends;

- (id) initWithPeople:(NSArray*) people;
- (void) closestFriends;

@end
