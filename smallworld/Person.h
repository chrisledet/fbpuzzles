//
//  Person.h
//  smallworld
//
//  Created by Chris Ledet on 9/23/11.
//  Copyright (c) 2011 Chris Ledet. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject {
    int uniqueId;
    CGPoint location;
}

@property int uniqueId;
@property CGPoint location;

- (id) initWithUniqueId:(int)uniqueIdNum andPoint:(CGPoint) loc;
- (float) distanceFrom:(Person*) friend;

@end
