//
//  GSSearchResult.m
//  DoctorTunes
//
//  Created by Diego Trinciarelli on 08/09/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "GSSearchResult.h"

@implementation GSSearchResult
@synthesize thumb,title,type,uri,summary;

+ (id)objectWithDictionary:(NSDictionary*)dictionary{
    id obj = [[[GSSearchResult alloc] initWithDictionary:dictionary] autorelease];
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
    if(uri){
        NSArray * a = [uri componentsSeparatedByString:@"/"];
        return [a lastObject];
    }
    else
    {
        return nil;
    }
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"[%@][%@] %@ - %@", type,self.itemid, title, uri];
}


- (void)dealloc{
    [thumb release];
    [title release];
    [type release];
    [uri release];
    [summary release];
    
    [super dealloc];
}

@end
