//
//  DiscoGsObject.m
//  DoctorTunes
//
//  Created by Diego Trinciarelli on 09/09/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "DiscoGsObject.h"

@implementation DiscoGsObject

+ (id)objectWithDictionary:(NSDictionary*)dictionary{
    id obj = [[[DiscoGsObject alloc] initWithDictionary:dictionary] autorelease];
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
    return nil;
}

@end
