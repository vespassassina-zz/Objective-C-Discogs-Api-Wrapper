#import "DiscoGsApi.h"
#import "JSONKit.h"


NSString *  _apiUri     = @"http://api.discogs.com";
NSString *  _apiClient  = @"DoctorTunes";
//[_params setValue:@"gzip, deflate" forKey:@"Accept-encoding"];

@implementation DiscoGsApi


- (void)dealloc
{
    [super dealloc];
}

#pragma mark - General
- (NSDictionary*)GetJsonForUrl:(NSString*)partialUrl{
    NSString *url = [NSString stringWithFormat:@"%@/%@",_apiUri,[partialUrl stringByAddingPercentEscapesUsingEncoding: NSASCIIStringEncoding]];
    
    NSLog(@"GetJsonForUrl: %@",url);
    
    NSURL * URL = [NSURL URLWithString:url];
    NSURLRequestCachePolicy policy = NSURLRequestReturnCacheDataElseLoad;
    NSMutableURLRequest * request = [NSMutableURLRequest requestWithURL:URL cachePolicy:policy timeoutInterval:120];
    
    NSMutableDictionary *headers = [NSMutableDictionary dictionaryWithCapacity:1];
    [headers setValue:@"gzip, deflate" forKey:@"Accept-encoding"];
    [request setAllHTTPHeaderFields:headers];
    
    NSError *error = nil;
    NSData *data = [NSURLConnection sendSynchronousRequest:request returningResponse:nil error:&error];
    
    if (error != nil) {
        return nil;
    }
    
    //NSString * json =[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    JSONDecoder *decoder = [JSONDecoder decoder];
    NSDictionary *items = [decoder objectWithData:data];
    
    //NSLog(@"encoded: %@",items);
    
    return items;

}

#pragma mark - Search

- (GSSearch*)Search:(NSString*)searchstring{
//    NSCharacterSet *doNotWant = [NSCharacterSet characterSetWithCharactersInString:@"/:.'\"!-_,^|@#<>()\\%$£+]["];
//    searchstring = [[searchstring componentsSeparatedByCharactersInSet: doNotWant] componentsJoinedByString: @" "];

    NSDictionary *data = [self GetJsonForUrl:[NSString stringWithFormat:@"search?q=%@",searchstring]];
    GSSearch *search = [[[GSSearch alloc] initWithDictionary:[[data objectForKey:@"resp"]objectForKey:@"search"]] autorelease];
    return search;
}
- (GSSearch*)   SearchReleases:(NSString*)searchstring{
    NSString *search = [NSString stringWithFormat:@"%@&type=releases",searchstring];
    return [self Search:search];
}
- (GSSearch*)   SearchArtists:(NSString*)searchstring{
    NSString *search = [NSString stringWithFormat:@"%@&type=artists",searchstring];
    return [self Search:search];
}
- (GSSearch*)   SearchLabels:(NSString*)searchstring{
    NSString *search = [NSString stringWithFormat:@"%@&type=labels",searchstring];
    return [self Search:search];
}


#pragma mark - Image
- (NSImage *) GetImage:(NSString *)imagepath{
    
    //NSString *url = [NSString stringWithFormat:@"%@/%@",_apiUri,[imagepath stringByAddingPercentEscapesUsingEncoding: NSASCIIStringEncoding]];
    NSString *url = imagepath;
    
    NSLog(@"GetImage: %@",url);
    
    NSURL * URL = [NSURL URLWithString:url];
    NSURLRequestCachePolicy policy = NSURLRequestReturnCacheDataElseLoad;
    NSMutableURLRequest * request = [NSMutableURLRequest requestWithURL:URL cachePolicy:policy timeoutInterval:120];
    
    NSMutableDictionary *headers = [NSMutableDictionary dictionaryWithCapacity:1];
    [headers setValue:@"gzip, deflate" forKey:@"Accept-encoding"];
    [request setAllHTTPHeaderFields:headers];
    
    NSError *error = nil;
    NSData *data = [NSURLConnection sendSynchronousRequest:request returningResponse:nil error:&error];
    
    if (error != nil) {
        return nil;
    }
    
    NSImage *img = [[[NSImage alloc] initWithData:data] autorelease];
    return img;
}

#pragma mark - Extraction

- (GSRelease *) GetRelease:(NSString *)releaseid{
    NSDictionary *data = [self GetJsonForUrl:[NSString stringWithFormat:@"release/%@",releaseid]];
    GSRelease *release = [[[GSRelease alloc] initWithDictionary:[[data objectForKey:@"resp"]objectForKey:@"release"]] autorelease];
    return release;
}

- (GSArtist *) GetArtist:(NSString *)artistname withReleases:(BOOL)releases{
    
    NSString * fragment = [NSString stringWithFormat:@"artist/%@",artistname];
    if(releases)
        fragment = [NSString stringWithFormat:@"%@?releases=1",fragment];
    
    NSDictionary *data = [self GetJsonForUrl:fragment];
    GSArtist *artist = [[[GSArtist alloc] initWithDictionary:[[data objectForKey:@"resp"]objectForKey:@"artist"]] autorelease];
    return artist;
}

- (GSMasterRelease *) GetMasterRelease:(NSString *)masterid{
    NSDictionary *data = [self GetJsonForUrl:[NSString stringWithFormat:@"master/%@",masterid]];
    GSMasterRelease *master = [[[GSMasterRelease alloc] initWithDictionary:[[data objectForKey:@"resp"]objectForKey:@"master"]] autorelease];
    return master;
}

- (GSLabel *) GetLabel:(NSString *)labelname withReleases:(BOOL)releases{
    
    NSString * fragment = [NSString stringWithFormat:@"label/%@",labelname];
    if(releases)
        fragment = [NSString stringWithFormat:@"%@?releases=1",fragment];
    
    NSDictionary *data = [self GetJsonForUrl:fragment];
    GSLabel *label = [[[GSLabel alloc] initWithDictionary:[[data objectForKey:@"resp"]objectForKey:@"label"]] autorelease];
    return label;
}

@end