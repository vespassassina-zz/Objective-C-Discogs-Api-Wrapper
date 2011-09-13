//
//  GSMasterRelease.h
//  DoctorTunes
//
//  Created by Diego Trinciarelli on 09/09/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//
#import <Foundation/Foundation.h>
#import "DiscoGsObject.h"

#import "GSArtist.h"
#import "GSTrack.h"
#import "GSImage.h"
#import "GSEntity.h"
#import "GSFormat.h"
#import "GSVideo.h"
#import "GSVersion.h"

@interface GSMasterRelease : DiscoGsObject
{

    
    NSString * ID;
    NSString * main_release;
    NSString * notes;
    NSString * year;

    NSMutableArray * styles;
    NSMutableArray * genres;
    NSMutableArray * videos;
    NSMutableArray * versions;
    NSMutableArray * artists;
    NSMutableArray * images;
    NSMutableArray * tracklist;
    
}

@property (readonly) NSString * ID;

@property (readonly) NSString * main_release;
@property (readonly) NSString * notes;
@property (readonly) NSString * year;

@property (readonly) NSArray * styles;
@property (readonly) NSArray * genres;
@property (readonly) NSArray * videos;
@property (readonly) NSArray * versions;
@property (readonly) NSArray * artists;
@property (readonly) NSArray * images;
@property (readonly) NSArray * tracklist;


@end