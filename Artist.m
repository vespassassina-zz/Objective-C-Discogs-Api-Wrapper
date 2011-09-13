#import "Artist.h"
#import "Release.h"
#import "MasterRelease.h"

@implementation Artist

- (id)init
{
    return nil;
}

- (id)initWithName:(NSString *)name
{
    self = [super init];
    
    if (self) {
        name             = name;
        aliases        = [[NSMutableArray alloc] init];
        nameVariations = [[NSMutableArray alloc] init];
        releases       = [[NSMutableArray alloc] init];
    }
    
    return self;
}

- (id)initWithName:(NSString *)name anv:(NSString *)anv
{
    self = [super init];
    
    if (self) {
        _id             = name;
        _anv            = anv;
        _aliases        = [[NSMutableArray alloc] init];
        _nameVariations = [[NSMutableArray alloc] init];
        _releases       = [[NSMutableArray alloc] init];
    }
    
    return self;
}

- (void)dealloc
{
    if (_anv != nil)            [_anv release];
    if (_aliases != nil)        [_aliases release];
    if (_nameVariations != nil) [_nameVariations release];
    if (_releases != nil)       [_releases release];
    
    _anv            = nil;
    _aliases        = nil;
    _nameVariations = nil;
    _releases       = nil;
    
    [super dealloc];
}

- (NSString *)description
{
    if (_anv != nil)
        return [NSString stringWithFormat:@"<%@ \"*%@\">", [self class], self.anv];
    else
        return [NSString stringWithFormat:@"<%@, \"%@\">", [self class], self.name];
}

#pragma mark Read only properties

- (NSString *)name
{
    return _id;
}

- (NSString *)anv
{
    return _anv;
}

- (NSArray *)aliases
{
    if ([_aliases count] == 0) {
        for (NSString * alias in [self.data objectForKey:@"aliases"]) {
            [_aliases addObject:[[[Artist alloc] initWithName:alias] autorelease]];
        }
    }
    
    return _aliases;
}

- (NSArray *)releases
{
    if ([_releases count] == 0) {
        for (NSDictionary * r in [self.data objectForKey:@"releases"]) {
            [_releases addObject:[self _objectFromString:[r objectForKey:@"type"] withParam:[r objectForKey:@"id"]]];
        }
    }
    
    return _releases;
}

@end