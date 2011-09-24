//
//  main.m
//  smallworld
//
//  Created by Chris Ledet on 9/23/11.
//  Copyright (c) 2011 Chris Ledet. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "World.h"

int main (int argc, const char * argv[])
{
    
    @autoreleasepool {
        NSString *path = [NSString stringWithCString:argv[1] encoding:NSUTF8StringEncoding];
        NSString *fileContents = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:nil];       
        
        NSArray* lines = [fileContents componentsSeparatedByString: @"\n"];
        NSMutableArray* people = [[NSMutableArray alloc] init];
        
        for(NSString* line in lines) {
            
            NSMutableArray* values = (NSMutableArray *)[line componentsSeparatedByString:@" "];
            
            if ([values count] > 1) {
                [values removeObject:@""];
                int uniqueId = [[values objectAtIndex:0] intValue];
                double x = [[values objectAtIndex:1] doubleValue];
                double y = [[values objectAtIndex:2] doubleValue];
                Person* person = [[Person alloc] initWithUniqueId:uniqueId andPoint:CGPointMake(x, y)];
                [people addObject:person];
            }
        }
        
        World* world = [[World alloc] initWithPeople:people];
        [world closestFriends];
    }
    
    return 0;
}

