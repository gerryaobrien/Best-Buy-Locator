//
//  Profile.m
//  sartorii
//
//  Created by Gabelmann Fredrick on 5/4/12.
//  Copyright (c) 2012 Reticent Media, Inc. All rights reserved.
//

#import "Store.h"

@interface Store ()
@property (nonatomic, strong) RKObjectManager *manager;
@end

@implementation Store

#pragma mark - Properties

@synthesize region;
@synthesize city;
@synthesize address;
@synthesize longName;
@synthesize name;
@synthesize country;
@synthesize lng;
@synthesize postalCode;
@synthesize phone;
@synthesize hours;
@synthesize storeId;
@synthesize lat;
@synthesize fullPostalCode;
@synthesize distance;
@synthesize manager;


#pragma mark - Initializers

- (id)initForStores:(RKObjectManager *)objectManager
{
    self = [super init];
    
    if (self) {
        self.manager = objectManager;
        RKObjectMapping *successResponseMapping = [RKObjectMapping mappingForClass:[Store class]];
        [successResponseMapping mapAttributes:@"region", @"city", @"address", @"longName", @"name", @"country", @"lng", @"postalCode", @"phone", @"hours", @"storeId", @"lat", @"fullPostalCode", @"distance", nil];
        [self.manager.mappingProvider setMapping:successResponseMapping forKeyPath:@"stores"];
    }
    
    return self;
}


#pragma mark - Requests

- (void)getStoresWithZipcode:(NSString *)aZipcode distance:(NSString *)aDistance andDelegate:(id)delegate
{
    [self.manager loadObjectsAtResourcePath:[NSString stringWithFormat:@"/stores(area(%@,%@))?apiKey=%@&format=json", aZipcode, aDistance, kBbyopenApiKey] delegate:delegate];
}

#pragma mark NSCoding
- (void)encodeWithCoder:(NSCoder *)encoder {
    [encoder encodeObject:region forKey:@"region"];
    [encoder encodeObject:city forKey:@"city"];
    [encoder encodeObject:address forKey:@"address"];
    [encoder encodeObject:longName forKey:@"longName"];
    [encoder encodeObject:name forKey:@"name"];
    [encoder encodeObject:country forKey:@"country"];
    [encoder encodeFloat:lng forKey:@"lng"];
    [encoder encodeObject:postalCode forKey:@"postalCode"];
    [encoder encodeObject:phone forKey:@"phone"];
    [encoder encodeObject:hours forKey:@"hours"];
    [encoder encodeInt:storeId forKey:@"storeId"];
    [encoder encodeFloat:lat forKey:@"lat"];
    [encoder encodeObject:fullPostalCode forKey:@"fullPostalCode"];
    [encoder encodeFloat:distance forKey:@"distance"];
    [encoder encodeObject:manager forKey:@"manager"];
}

- (id)initWithCoder:(NSCoder *)decoder {
    if (self = [super init]) {
        self.region = [decoder decodeObjectForKey:@"region"];
        self.city = [decoder decodeObjectForKey:@"city"];
        self.address = [decoder decodeObjectForKey:@"address"];
        self.longName = [decoder decodeObjectForKey:@"longName"];
        self.name = [decoder decodeObjectForKey:@"name"];
        self.country = [decoder decodeObjectForKey:@"country"];
        self.lng = [decoder decodeFloatForKey:@"lng"];
        self.postalCode = [decoder decodeObjectForKey:@"postalCode"];
        self.phone = [decoder decodeObjectForKey:@"phone"];
        self.hours = [decoder decodeObjectForKey:@"hours"];
        self.storeId = [decoder decodeIntForKey:@"storeId"];
        self.lat = [decoder decodeFloatForKey:@"lat"];
        self.fullPostalCode = [decoder decodeObjectForKey:@"fullPostalCode"];
        self.distance = [decoder decodeFloatForKey:@"distance"];
        self.manager = [decoder decodeObjectForKey:@"manager"];
    }
    return self;
}
@end
