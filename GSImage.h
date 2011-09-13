//
//  GSImage.h
//  DoctorTunes
//
//  Created by Diego Trinciarelli on 09/09/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DiscoGsObject.h"

@interface GSImage : DiscoGsObject
{
    NSString * type;
    NSString * uri;
    NSString * uri150;
    NSNumber * height;
    NSNumber * width;
}

@property (readonly) NSString * type;
@property (readonly) NSString * uri;
@property (readonly) NSString * uri150;
@property (readonly) NSNumber * height;
@property (readonly) NSNumber * width;



@end
