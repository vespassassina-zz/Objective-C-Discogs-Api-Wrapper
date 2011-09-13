//
//  GSTrack.h
//  DoctorTunes
//
//  Created by Diego Trinciarelli on 09/09/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DiscoGsObject.h"
#import "GSArtist.h"

@interface GSTrack : DiscoGsObject
{
    NSString * duration;
    NSString * position;
    NSString * title;
    
    NSMutableArray * extraartists;
    NSMutableArray * artists;
}

@property (readonly) NSString * duration;
@property (readonly) NSString * position;
@property (readonly) NSString * title;

@property (readonly) NSMutableArray * extraartists;
@property (readonly) NSMutableArray * artists;



@end
