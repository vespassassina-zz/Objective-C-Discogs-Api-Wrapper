//
//  GSVersion.m
//  DoctorTunes
//
//  Created by Diego Trinciarelli on 09/09/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "GSVersion.h"

@implementation GSVersion



@synthesize status,thumb,format,country,title,label,released,catno,ID;

+ (id)objectWithDictionary:(NSDictionary*)dictionary{
    id obj = [[[GSVersion alloc] initWithDictionary:dictionary] autorelease];
    return obj;
}

- (id)initWithDictionary:(NSDictionary*)dictionary{
    self = [super init];
    if (self) {
        status = [dictionary objectForKey:@"status"];
        thumb = [dictionary objectForKey:@"thumb"];
        format = [dictionary objectForKey:@"format"];
        country = [dictionary objectForKey:@"country"];
        title = [dictionary objectForKey:@"title"];
        label = [dictionary objectForKey:@"label"];
        released = [dictionary objectForKey:@"released"];
        catno = [dictionary objectForKey:@"catno"];
        ID = [dictionary objectForKey:@"id"];
    }
    return self;
}


- (NSString *)itemid{
    return ID;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"[%@] %@", ID, title];
}


- (void)dealloc{
    [status release];
    [thumb release];
    [format release];
    [country release];
    [title release];
    [label release];
    [released release];
    [catno release];
    [ID release];
    
    [super dealloc];
}

@end


