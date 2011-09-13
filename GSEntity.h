//
//  GSEntity.h
//  DoctorTunes
//
//  Created by Diego Trinciarelli on 09/09/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DiscoGsObject.h"

@interface GSEntity : DiscoGsObject
{
    NSString * catno;
    NSString * name;
    NSString * entity_type;
    NSString * entity_type_name;
}

@property (readonly) NSString * catno;
@property (readonly) NSString * name;
@property (readonly) NSString * entity_type;
@property (readonly) NSString * entity_type_name;


@end
