
//
//  GSVideo.m
//  DoctorTunes
//
//  Created by Diego Trinciarelli on 09/09/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "GSVideo.h"

@implementation GSVideo
@synthesize uri,duration,embed,description,title;

+ (id)objectWithDictionary:(NSDictionary*)dictionary{
    id obj = [[[GSVideo alloc] initWithDictionary:dictionary] autorelease];
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
        NSArray * a = [uri componentsSeparatedByString:@"="];
        return [a lastObject];
    }
    else
    {
        return nil;
    }
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"%@: %@", title, uri];
}


- (void)dealloc{
    [uri release];
    [duration release];
    [embed release];
    [description release];
    [title release];
    
    [super dealloc];
}

@end
