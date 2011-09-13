//
//  GSSearchResults.m
//  DoctorTunes
//
//  Created by Diego Trinciarelli on 08/09/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "GSSearchResults.h"
#import "GSSearchResult.h"

@implementation GSSearchResults
@synthesize numResults,start,end,results;


+ (id)objectWithDictionary:(NSDictionary*)dictionary{
    id obj = [[[GSSearchResults alloc] initWithDictionary:dictionary] autorelease];
    return obj;
}
- (id)initWithDictionary:(NSDictionary*)dictionary{
    self = [super init];
    if (self) {
        
        numResults = [dictionary objectForKey:@"numResults"];
        start = [dictionary objectForKey:@"start"];
        end = [dictionary objectForKey:@"end"];
        
        results = [[NSMutableArray alloc] init];
        NSArray *res = [dictionary objectForKey:@"results"];
        for (NSDictionary *d in res) {
            [results addObject:[GSSearchResult objectWithDictionary:d]];
        }
        
    }
    return self;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"num %@: %@", numResults, results];
}

- (void)dealloc{
    [numResults release];
    [start release];
    [end release];
    [results release];
    
    [super dealloc];
}

@end
