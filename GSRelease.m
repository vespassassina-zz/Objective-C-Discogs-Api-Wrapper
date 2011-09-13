//
//  GSRelease.m
//  DoctorTunes
//
//  Created by Diego Trinciarelli on 08/09/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "GSRelease.h"

@implementation GSRelease
@synthesize ID,status,title,country,notes,released,released_formatted,year,master_id;
@synthesize series,styles,genres,companies,labels,extraartists,artists,videos,formats,images,tracklist;

+ (id)objectWithDictionary:(NSDictionary*)dictionary{
    id obj = [[[GSRelease alloc] initWithDictionary:dictionary] autorelease];
    return obj;
}

- (id)initWithDictionary:(NSDictionary*)dictionary{
    self = [super init];
    if (self) {
        
        series = [[NSMutableArray alloc] init];
        NSArray *res = [dictionary objectForKey:@"series"];
        for (NSDictionary *d in res) {
            [series addObject:[GSEntity objectWithDictionary:d]];
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
        
        companies = [[NSMutableArray alloc] init];
        res = [dictionary objectForKey:@"companies"];
        for (NSDictionary *d in res) {
            [companies addObject:[GSEntity objectWithDictionary:d]];
        }
        
        labels = [[NSMutableArray alloc] init];
        res = [dictionary objectForKey:@"labels"];
        for (NSDictionary *d in res) {
            [labels addObject:[GSEntity objectWithDictionary:d]];
        }
        
        extraartists = [[NSMutableArray alloc] init];
        res = [dictionary objectForKey:@"extraartists"];
        for (NSDictionary *d in res) {
            [extraartists addObject: [GSArtist objectWithDictionary:d]];
        }
        
        artists = [[NSMutableArray alloc] init];
        res = [dictionary objectForKey:@"artists"];
        for (NSDictionary *d in res) {
            [artists addObject:[GSArtist objectWithDictionary:d]];
        }
        
        videos = [[NSMutableArray alloc] init];
        res = [dictionary objectForKey:@"videos"];
        for (NSDictionary *d in res) {
            [videos addObject:[GSVideo objectWithDictionary:d]];
        }
        
        formats = [[NSMutableArray alloc] init];
        res = [dictionary objectForKey:@"formats"];
        for (NSDictionary *d in res) {
            [formats addObject:[GSFormat objectWithDictionary:d]];
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
        status = [dictionary objectForKey:@"status"];
        title = [dictionary objectForKey:@"title"];
        country = [dictionary objectForKey:@"country"];
        notes = [dictionary objectForKey:@"notes"];
        released = [dictionary objectForKey:@"released"];
        released_formatted = [dictionary objectForKey:@"released_formatted"];
        year = [dictionary objectForKey:@"year"];
        master_id = [dictionary objectForKey:@"master_id"];
        
    }
    return self;
}

#pragma mark - virtual properties
- (NSString *)itemid{
    return ID;
}
- (NSString *)genre{
    
    if([genres count]>0){
        return [genres objectAtIndex:0];
    }
    
    return nil;
}
- (NSString *)style{
    if([styles count]>0){
        return [styles objectAtIndex:0];
    }
    
    return nil;
}
- (GSArtist *)artist{
    if([artists count]>0){
        return [artists objectAtIndex:0];
    }
    
    return nil;
}
- (GSEntity *)label{
    if([labels count]>0){
        return [labels objectAtIndex:0];
    }
    
    return nil;
}
- (GSImage *)image{
    if([images count]>0){
        return [images objectAtIndex:0];
    }
    
    return nil;
}
- (GSFormat *)format{
    if([formats count]>0){
        return [formats objectAtIndex:0];
    }
    
    return nil;
}





- (NSString *)description
{
    return [NSString stringWithFormat:@"%@ [%@] %@; ", title,self.itemid, year, notes];
}

- (void)dealloc{
    [ID release];
    [status release];
    [title release];
    [country release];
    [notes release];
    [released release];
    [released_formatted release];
    [master_id release];
    [year release];
    
    [ series release];
    [ styles release];
    [ genres release];
    
    [ companies release];
    [ labels release];
    [ extraartists release];
    [ artists release];
    [ videos release];
    [ formats release];
    [ images release];
    [ tracklist release];
    
    [super dealloc];
}

@end
