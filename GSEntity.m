//
//  GSLabel.m
//  DoctorTunes
//
//  Created by Diego Trinciarelli on 09/09/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "GSEntity.h"

@implementation GSEntity


@synthesize catno,entity_type,name,entity_type_name;

+ (id)objectWithDictionary:(NSDictionary*)dictionary{
    id obj = [[[GSEntity alloc] initWithDictionary:dictionary] autorelease];
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
    return catno;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"[%@] %@", catno, name];
}


- (void)dealloc{
    [catno release];
    [entity_type release];
    [name release];
    [entity_type_name release];
    
    [super dealloc];
}
@end
