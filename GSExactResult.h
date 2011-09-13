//
//  GSExactResult.h
//  DoctorTunes
//
//  Created by Diego Trinciarelli on 08/09/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DiscoGsObject.h"

@interface GSExactResult : DiscoGsObject
{
    NSString * thumb;
    NSString * title;
    NSString * type;
    NSString * uri;
    NSString * anv;
}

@property (readonly) NSString * thumb;
@property (readonly) NSString * title;
@property (readonly) NSString * type;
@property (readonly) NSString * uri;
@property (readonly) NSString * anv;



@end
