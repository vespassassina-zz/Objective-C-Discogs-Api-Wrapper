//
//  GSTrack.m
//  DoctorTunes
//
//  Created by Diego Trinciarelli on 09/09/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "GSTrack.h"

@implementation GSTrack

@synthesize duration,position,title,artists,extraartists;

+ (id)objectWithDictionary:(NSDictionary*)dictionary{
    id obj = [[[GSTrack alloc] initWithDictionary:dictionary] autorelease];
    return obj;
}

- (id)initWithDictionary:(NSDictionary*)dictionary{
    self = [super init];
    if (self) {
        
        extraartists = [[NSMutableArray alloc] init];
        NSArray *res = [dictionary objectForKey:@"extraartists"];
        for (NSDictionary *d in res) {
            [extraartists addObject: [GSArtist objectWithDictionary:d]];
        }
        
        artists = [[NSMutableArray alloc] init];
        res = [dictionary objectForKey:@"artists"];
        for (NSDictionary *d in res) {
            [artists addObject:[GSArtist objectWithDictionary:d]];
        }
        
        duration = [dictionary objectForKey:@"duration"];
        position = [dictionary objectForKey:@"position"];
        title = [dictionary objectForKey:@"title"];
        
        [self setValuesForKeysWithDictionary:dictionary];
    }
    return self;
}


- (NSString *)itemid{
    return title;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"[%@] %@", position, title];
}


- (void)dealloc{
    [duration release];
    [position release];
    [title release];
    [artists release];
    [extraartists release];
    
    [super dealloc];
}

@end
