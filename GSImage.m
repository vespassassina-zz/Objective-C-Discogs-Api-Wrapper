//
//  GSImage.m
//  DoctorTunes
//
//  Created by Diego Trinciarelli on 09/09/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "GSImage.h"

@implementation GSImage

@synthesize type,uri,uri150,height,width;

+ (id)objectWithDictionary:(NSDictionary*)dictionary{
    id obj = [[[GSImage alloc] initWithDictionary:dictionary] autorelease];
    return obj;
}

- (id)initWithDictionary:(NSDictionary*)dictionary{
    self = [super init];
    if (self) {
        [self setValuesForKeysWithDictionary:dictionary];
    }
    return self;
}


- (NSString *)itemid{
    return uri;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"[%@][%@]", type, uri];
}


- (void)dealloc{
    [type release];
    [uri release];
    [uri150 release];
    [height release];
    [width release];
    
    [super dealloc];
}

@end
