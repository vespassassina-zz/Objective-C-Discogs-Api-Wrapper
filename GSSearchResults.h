//
//  GSSearchResults.h
//  DoctorTunes
//
//  Created by Diego Trinciarelli on 08/09/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DiscoGsObject.h"
#import "GSSearchResult.h"

@interface GSSearchResults : DiscoGsObject
{
    NSString * numResults;
    NSString * start;
    NSString * end;
    NSMutableArray * results;
}

@property (readonly) NSString * numResults;
@property (readonly) NSString * start;
@property (readonly) NSString * end;
@property (readonly) NSMutableArray * results;


@end
