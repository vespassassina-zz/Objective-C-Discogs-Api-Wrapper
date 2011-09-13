//
//  DiscoGsObject.h
//  DoctorTunes
//
//  Created by Diego Trinciarelli on 09/09/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface DiscoGsObject : NSObject
{
    
}

@property (readonly) NSString * itemid;

+ (id)objectWithDictionary:(NSDictionary*)dictionary;
- (id)initWithDictionary:(NSDictionary*)dictionary;

@end
