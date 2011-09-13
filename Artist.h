#import <Foundation/Foundation.h>

#import "APIBase.h"

@interface Artist: NSObject
{
    NSString *          anv;
    NSString *          name;
    NSMutableArray *    aliases;
    NSMutableArray *    nameVariations;
    NSMutableArray *    releases;
    NSMutableArray *    urls;
}

@property (readonly) NSString * name;
@property (readonly) NSArray *  aliases;
@property (readonly) NSArray *  releases;
@property (readonly) NSArray *  urls;

- (id)initWithName:(NSString *)name;
- (id)initWithName:(NSString *)name anv:(NSString *)anv;

@end