//
//  GSSearch.m
//  DoctorTunes
//
//  Created by Diego Trinciarelli on 08/09/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "GSSearch.h"
#import "GSExactResult.h"
#import "GSSearchResults.h"

@implementation GSSearch
@synthesize searchresults, exactresults, version;


+ (id)objectWithDictionary:(NSDictionary*)dictionary{
    id obj = [[[GSSearch alloc] initWithDictionary:dictionary] autorelease];
    return obj;
}
- (id)initWithDictionary:(NSDictionary*)dictionary{
    self = [super init];
    if (self) {
        
        version = [dictionary objectForKey:@"version"];
        
        exactresults = [[NSMutableArray alloc] init];
        NSArray *exact = [dictionary objectForKey:@"exactresults"];
        for (NSDictionary *d in exact) {
            [exactresults addObject:[GSExactResult objectWithDictionary:d]];
        }
        
        searchresults = [[GSSearchResults alloc] initWithDictionary:[dictionary objectForKey:@"searchresults"]];
    }
    return self;
}



- (NSString *)description
{
    return [NSString stringWithFormat:@"%@", searchresults];
}

- (void) dealloc{
    [searchresults release];
    [exactresults release];
    [version release];
    
    [super dealloc];
}

@end
