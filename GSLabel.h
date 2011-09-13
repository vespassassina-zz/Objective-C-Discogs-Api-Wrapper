//
//  GSLabel.h
//  DoctorTunes
//
//  Created by Diego Trinciarelli on 09/09/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DiscoGsObject.h"
#import "GSImage.h"

@class GSRelease;

@interface GSLabel : DiscoGsObject
{
    NSString * parentlabel;
    NSString * contactinfo;
    NSString * name;
    
    NSMutableArray * sublabels;
    NSMutableArray * images;
    
    NSMutableArray * releases;
}

@property (readonly) NSString * parentlabel;
@property (readonly) NSString * contactinfo;
@property (readonly) NSString * name;

@property (readonly) NSArray * sublabels;
@property (readonly) NSArray * images;

@property (readonly) NSArray * releases;

@end