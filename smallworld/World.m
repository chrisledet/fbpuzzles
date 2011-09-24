//
//  World.m
//  smallworld
//
//  Created by Chris Ledet on 9/23/11.
//  Copyright (c) 2011 Chris Ledet. All rights reserved.
//

#import "World.h"

@implementation World

@synthesize friends;

- (id) initWithPeople:(NSArray*) people
{
    if (self = [self init]) {
        self.friends = people;
    }
    return self;
}

- (void) dealloc
{
    [friends release];
    [super dealloc];
}

- (void) closestFriends
{
    for (Person* person in friends) {
        
        NSMutableDictionary* distances = [[NSMutableDictionary alloc] init];
        for (Person* friend in friends) {
            if (friend.uniqueId != person.uniqueId) {
                NSNumber* distance = [NSNumber numberWithFloat:[person distanceFrom:friend]];
                [distances setObject:friend forKey:distance];
            }
        }
        
        NSArray* keys = [distances allKeys];
        keys = [keys sortedArrayUsingSelector:@selector(compare:)];

        if ([keys count] > 2) {
            Person* p1 = [distances objectForKey:[keys objectAtIndex:0]];
            Person* p2 = [distances objectForKey:[keys objectAtIndex:1]];
            Person* p3 = [distances objectForKey:[keys objectAtIndex:2]];
            printf("%d %d,%d,%d\n", person.uniqueId, p1.uniqueId, p2.uniqueId, p3.uniqueId);
        }
        [distances release];
    }
}

@end
