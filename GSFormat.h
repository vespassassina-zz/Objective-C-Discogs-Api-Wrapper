//
//  GSFormat.h
//  DoctorTunes
//
//  Created by Diego Trinciarelli on 09/09/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DiscoGsObject.h"

@interface GSFormat : DiscoGsObject
{
    NSString * name;
    NSString * qty;
    NSMutableArray  * descriptions;
}

@property (readonly) NSString * name;
@property (readonly) NSString * qty;
@property (readonly) NSArray * descriptions;



@end
