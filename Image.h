//
//  Image.h
//  DoctorTunes
//
//  Created by Diego Trinciarelli on 08/09/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Image : NSObject
{
    int                 width;
    int                 height;
    NSString *          uri150;
    NSString *          uri;
    NSString *          type;
}


@property (readonly) int                 width;
@property (readonly) int                 height;
@property (readonly) NSString *          uri150;
@property (readonly) NSString *          uri;
@property (readonly) NSString *          type;

@end