//
//  GSArtist.m
//  DoctorTunes
//
//  Created by Diego Trinciarelli on 09/09/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "GSArtist.h"
#import "GSRelease.h"

@implementation GSArtist

@synthesize anv,join,name,role,tracks;
@synthesize realname, namevariations, urls, images,aliases;
@synthesize releases;

+ (id)objectWithDictionary:(NSDictionary*)dictionary{
    id obj = [[[GSArtist alloc] initWithDictionary:dictionary] autorelease];
    return obj;
}

- (id)initWithDictionary:(NSDictionary*)dictionary{
    self = [super init];
    if (self) {
        
        namevariations = [[NSMutableArray alloc] init];
        NSArray * res = [dictionary objectForKey:@"namevariations"];
        for (NSString *d in res) {
            [namevariations addObject:d];
        }
        
        urls = [[NSMutableArray alloc] init];
        res = [dictionary objectForKey:@"urls"];
        for (NSString *d in res) {
            [urls addObject:d];
        }
        
        images = [[NSMutableArray alloc] init];
        res = [dictionary objectForKey:@"images"];
        for (NSDictionary *d in res) {
            [images addObject:[GSImage objectWithDictionary:d]];
        }
        
        aliases = [[NSMutableArray alloc] init];
        res = [dictionary objectForKey:@"aliases"];
        for (NSString *d in res) {
            [aliases addObject:d];
        }
        
        releases = [[NSMutableArray alloc] init];
        res = [dictionary objectForKey:@"releases"];
        for (NSDictionary *d in res) {
            [releases addObject:[GSRelease objectWithDictionary:d]];
        }
        
        anv = [dictionary objectForKey:@"anv"];
        join = [dictionary objectForKey:@"join"];
        name = [dictionary objectForKey:@"name"];
        role = [dictionary objectForKey:@"role"];
        tracks = [dictionary objectForKey:@"tracks"];
        realname = [dictionary objectForKey:@"realname"];

    }
    return self;
}


- (NSString *)itemid{
    return anv;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"%@", name];
}


- (void)dealloc{
    [anv release];
    [join release];
    [name release];
    [role release];
    [tracks release];
    
    [realname release];
    [namevariations release];
    [urls release];
    [images release];
    [aliases release];
    
    [releases release];
    
    [super dealloc];
}
@end
