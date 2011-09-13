//
//  GSFormat.m
//  DoctorTunes
//
//  Created by Diego Trinciarelli on 09/09/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "GSFormat.h"

@implementation GSFormat


@synthesize name,qty,descriptions;

+ (id)objectWithDictionary:(NSDictionary*)dictionary{
    id obj = [[[GSFormat alloc] initWithDictionary:dictionary] autorelease];
    return obj;
}

- (id)initWithDictionary:(NSDictionary*)dictionary{
    self = [super init];
    if (self) {

        descriptions = [[NSMutableArray alloc] init];
        NSArray *res = [dictionary objectForKey:@"artists"];
        for (NSString *d in res) {
            [descriptions addObject:d];
        }
    
        name = [dictionary objectForKey:@"name"];
        qty = [dictionary objectForKey:@"qty"];
    
    }
    return self;
}


- (NSString *)itemid{
    return name;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"%@", name];
}


- (void)dealloc{
    [name release];
    [qty release];
    [descriptions release];
    
    [super dealloc];
}
@end
