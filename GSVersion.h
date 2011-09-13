//
//  GSVersion.h
//  DoctorTunes
//
//  Created by Diego Trinciarelli on 09/09/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "DiscoGsObject.h"

@interface GSVersion : DiscoGsObject
{
    NSString * status;
    NSString * thumb;
    NSString * format;
    NSString * country;
    NSString * title;
    NSString * label;
    NSString * released;
    NSString * catno;
    NSString * ID;
}

@property (readonly) NSString * status;
@property (readonly) NSString * thumb;
@property (readonly) NSString * format;
@property (readonly) NSString * country;
@property (readonly) NSString * title;
@property (readonly) NSString * label;
@property (readonly) NSString * released;
@property (readonly) NSString * catno;
@property (readonly) NSString * ID;


@end


