//
//  GSMasterRelease.m
//  DoctorTunes
//
//  Created by Diego Trinciarelli on 09/09/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "GSMasterRelease.h"

@implementation GSMasterRelease

@synthesize ID,main_release,notes,year;
@synthesize styles,genres,videos,versions,artists,images,tracklist;


+ (id)objectWithDictionary:(NSDictionary*)dictionary{
    id obj = [[[GSMasterRelease alloc] initWithDictionary:dictionary] autorelease];
    return obj;
}

- (id)initWithDictionary:(NSDictionary*)dictionary{
    self = [super init];
    if (self) {
        
        videos = [[NSMutableArray alloc] init];
        NSArray *res = [dictionary objectForKey:@"videos"];
        for (NSDictionary *d in res) {
            [videos addObject:[GSVideo objectWithDictionary:d]];
        }
        
        styles = [[NSMutableArray alloc] init];
        res = [dictionary objectForKey:@"styles"];
        for (NSString *d in res) {
            [styles addObject:d];
        }
        
        genres = [[NSMutableArray alloc] init];
        res = [dictionary objectForKey:@"genres"];
        for (NSString *d in res) {
            [genres addObject:d];
        }
        
        
        artists = [[NSMutableArray alloc] init];
        res = [dictionary objectForKey:@"artists"];
        for (NSDictionary *d in res) {
            [artists addObject:[GSArtist objectWithDictionary:d]];
        }
        
        versions = [[NSMutableArray alloc] init];
        res = [dictionary objectForKey:@"versions"];
        for (NSDictionary *d in res) {
            [versions addObject:[GSVersion objectWithDictionary:d]];
        }
        
        images = [[NSMutableArray alloc] init];
        res = [dictionary objectForKey:@"images"];
        for (NSDictionary *d in res) {
            [images addObject:[GSImage objectWithDictionary:d]];
        }
        
        tracklist = [[NSMutableArray alloc] init];
        res = [dictionary objectForKey:@"tracklist"];
        for (NSDictionary *d in res) {
            [tracklist addObject:[GSTrack objectWithDictionary:d]];
        }
        
        ID = [dictionary objectForKey:@"id"];
        notes = [dictionary objectForKey:@"notes"];
        year = [dictionary objectForKey:@"year"];
        main_release = [dictionary objectForKey:@"main_release"];
        
    }
    return self;
}

- (NSString *)itemid{
    return ID;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"[%@]: %@ ", ID, notes];
}

- (void)dealloc{
    [ID release];
    [notes release];
    [main_release release];
    [year release];
    
    [ styles release];
    [ genres release];
    [ artists release];
    [ videos release];
    [ versions release];
    [ images release];
    [ tracklist release];
    
    [super dealloc];
}

@end