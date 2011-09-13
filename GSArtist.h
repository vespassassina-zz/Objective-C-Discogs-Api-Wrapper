//
//  GSArtist.h
//  DoctorTunes
//
//  Created by Diego Trinciarelli on 09/09/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DiscoGsObject.h"
#import "GSImage.h"


@class  GSRelease;

@interface GSArtist : DiscoGsObject
{
    NSString * anv;
    NSString * join;
    NSString * name;
    NSString * role;
    NSString * tracks;
    
    NSString * realname;
    
    NSMutableArray * namevariations;
    NSMutableArray * urls;
    NSMutableArray * images;
    NSMutableArray * aliases;
    
    NSMutableArray * releases;
}

@property (readonly) NSString * anv;
@property (readonly) NSString * join;
@property (readonly) NSString * name;
@property (readonly) NSString * role;
@property (readonly) NSString * tracks;

@property (readonly) NSString * realname;

@property (readonly) NSArray * namevariations;
@property (readonly) NSArray * urls;
@property (readonly) NSArray * images;
@property (readonly) NSArray * aliases;

@property (readonly) NSArray * releases;


@end
