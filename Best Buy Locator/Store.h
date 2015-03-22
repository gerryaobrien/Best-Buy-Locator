//
//  Profile.h
//  sartorii
//
//  Created by Gabelmann Fredrick on 5/4/12.
//  Copyright (c) 2012 Reticent Media, Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Store : NSObject < NSCoding>

#pragma mark - Properites

@property (strong, nonatomic) NSString *region;
@property (strong, nonatomic) NSString *city;
@property (strong, nonatomic) NSString *address;
@property (strong, nonatomic) NSString *longName;
@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *country;
@property (assign) float lng;
@property (strong, nonatomic) NSString *postalCode;
@property (strong, nonatomic) NSString *phone;
@property (strong, nonatomic) NSString *hours;
@property (assign) NSInteger storeId;
@property (assign) float lat;
@property (strong, nonatomic) NSString *fullPostalCode;
@property (assign) float distance;


#pragma mark - Initializers

- (id)initForStores:(RKObjectManager *)objectManager;


#pragma mark - Requests

- (void)getStoresWithZipcode:(NSString *)aZipcode distance:(NSString *)aDistance andDelegate:(id)delegate;
@end
