//
//  Person.m
//  smallworld
//
//  Created by Chris Ledet on 9/23/11.
//  Copyright (c) 2011 Chris Ledet. All rights reserved.
//

#import "Person.h"

@implementation Person

@synthesize location;
@synthesize uniqueId;

- (id) initWithUniqueId:(int)uniqueIdNum andPoint:(CGPoint) loc
{
    if (self = [super init]) {
        self.uniqueId = uniqueIdNum;
        self.location = loc;
    }
    return self;
}

- (float) distanceFrom:(Person*) friend {
    return sqrt(pow(friend.location.x - self.location.x, 2) + pow(friend.location.y - self.location.y, 2));
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"Person %d", self.uniqueId];
}

@end
