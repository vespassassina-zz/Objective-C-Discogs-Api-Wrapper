//
//  GSLabel.m
//  DoctorTunes
//
//  Created by Diego Trinciarelli on 09/09/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "GSLabel.h"
#import "GSRelease.h"

@implementation GSLabel

@synthesize parentlabel,contactinfo,name;
@synthesize sublabels, images, releases;


+ (id)objectWithDictionary:(NSDictionary*)dictionary{
    id obj = [[[GSLabel alloc] initWithDictionary:dictionary] autorelease];
    return obj;
}

- (id)initWithDictionary:(NSDictionary*)dictionary{
    self = [super init];
    if (self) {
        
        sublabels = [[NSMutableArray alloc] init];
        NSArray * res = [dictionary objectForKey:@"sublabels"];
        for (NSString *d in res) {
            [sublabels addObject:d];
        }
        
        images = [[NSMutableArray alloc] init];
        res = [dictionary objectForKey:@"images"];
        for (NSDictionary *d in res) {
            [images addObject:[GSImage objectWithDictionary:d]];
        }
                
        releases = [[NSMutableArray alloc] init];
        res = [dictionary objectForKey:@"releases"];
        for (NSDictionary *d in res) {
            [releases addObject:[GSRelease objectWithDictionary:d]];
        }
        
        parentlabel = [dictionary objectForKey:@"anv"];
        contactinfo = [dictionary objectForKey:@"join"];
        name = [dictionary objectForKey:@"name"];

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
    [parentlabel release];
    [contactinfo release];
    [name release];

    [sublabels release];
    [images release];
    
    [releases release];
    
    [super dealloc];
}
@end
