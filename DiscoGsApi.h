#import <Foundation/Foundation.h>
#import "GSSearch.h"
#import "GSSearchResults.h"
#import "GSSearchResult.h"
#import "GSExactResult.h"
#import "GSRelease.h"
#import "GSMasterRelease.h"
#import "GSArtist.h"
#import "GSLabel.h"
#import "GSVersion.h"
#import "GSVideo.h"
#import "GSFormat.h"
#import "GSEntity.h"
#import "GSTrack.h"
#import "GSImage.h"

extern NSString *   _apiUri;
extern NSString *   _apiClient;

@interface DiscoGsApi : NSObject
{

}

- (NSDictionary*)GetJsonForUrl:(NSString*)url;

- (GSSearch*)           Search:(NSString*)searchstring;
- (GSSearch*)           SearchReleases:(NSString*)searchstring;
- (GSSearch*)           SearchArtists:(NSString*)searchstring;
- (GSSearch*)           SearchLabels:(NSString*)searchstring;

- (NSImage *)           GetImage:(NSString *)imagepath;

- (GSRelease *)         GetRelease:(NSString *)releaseid;
- (GSMasterRelease *)   GetMasterRelease:(NSString *)masterid;
- (GSArtist *)          GetArtist:(NSString *)artistname withReleases:(BOOL)releases;
- (GSLabel *)           GetLabel:(NSString *)labelname withReleases:(BOOL)releases;


@end