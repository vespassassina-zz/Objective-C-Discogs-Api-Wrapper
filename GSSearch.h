//
//  GSSearch.h
//  DoctorTunes
//
//  Created by Diego Trinciarelli on 08/09/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DiscoGsObject.h"
#import "GSSearchResults.h"
#import "GSExactResult.h"

@interface GSSearch : NSObject
{
    GSSearchResults * searchresults;
    NSMutableArray * exactresults;
    NSString *version;
}

@property (readonly) GSSearchResults * searchresults;
@property (readonly) NSMutableArray * exactresults;
@property (readonly) NSString *version;



@end
