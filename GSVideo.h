//
//  GSVideo.h
//  DoctorTunes
//
//  Created by Diego Trinciarelli on 09/09/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DiscoGsObject.h"

@interface GSVideo : DiscoGsObject
{
    NSString * uri;
    NSNumber * duration;
    NSString * embed;
    NSString * description;
    NSString * title;
}

@property (readonly) NSString * uri;
@property (readonly) NSNumber * duration;
@property (readonly) NSString * embed;
@property (readonly) NSString * description;
@property (readonly) NSString * title;

@end


