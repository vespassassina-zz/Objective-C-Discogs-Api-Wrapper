//
//  GSRelease.h
//  DoctorTunes
//
//  Created by Diego Trinciarelli on 08/09/11.
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
#import "GSLabel.h"

@interface GSRelease : DiscoGsObject
{
    NSString * ID;
    NSString * status;
    NSString * title;
    NSString * country;
    NSString * notes;
    NSString * released;
    NSString * released_formatted;
    NSNumber * year;
    NSString * master_id;
    
    NSMutableArray * series;
    NSMutableArray * styles;
    NSMutableArray * genres;
    
    NSMutableArray * companies;
    NSMutableArray * labels;
    NSMutableArray * extraartists;
    NSMutableArray * artists;
    NSMutableArray * videos;
    
    NSMutableArray * formats;
    
    NSMutableArray * images;
    NSMutableArray * tracklist;

}

@property (readonly) NSString * ID;
@property (readonly) NSString * status;
@property (readonly) NSString * title;
@property (readonly) NSString * country;
@property (readonly) NSString * notes;
@property (readonly) NSString * released;
@property (readonly) NSString * released_formatted;
@property (readonly) NSNumber * year;
@property (readonly) NSString * master_id;

@property (readonly) NSArray * series;
@property (readonly) NSArray * styles;
@property (readonly) NSArray * genres;

@property (readonly) NSArray * companies;
@property (readonly) NSArray * labels;
@property (readonly) NSArray * extraartists;
@property (readonly) NSArray * artists;
@property (readonly) NSArray * videos;

@property (readonly) NSArray * formats;

@property (readonly) NSArray * images;
@property (readonly) NSArray * tracklist;


@property (readonly) NSString * genre;
@property (readonly) NSString * style;
@property (readonly) GSArtist * artist;
@property (readonly) GSEntity * label;
@property (readonly) GSImage  * image;
@property (readonly) GSFormat * format;

@end
