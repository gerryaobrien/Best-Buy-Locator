//
//  STNetworkDelegate.h
//  sartorii
//
//  Created by Gabelmann Fredrick on 4/25/12.
//  Copyright (c) 2012 Reticent Media, Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SHNetworkDelegate : NSObject <RKRequestDelegate>

#pragma mark - Instance Methods

- (void)configureNetworkLayer;

/**
 * The following method retrieves an array of Store objects from the BBYOpen API.
 * 
 * @param aZipcode The string representing the zipcode to retrieve stores for.
 * @param distance The string representing the distance radius in miles to search around the supplied zipcode.
 * @param delegate Any object that must conform to the <SHRetrieveStoresDelegate> protocol.  This object will be called back with an array returned by the BBYOpen API.  The relevant delegate method that must be implemented on your object is didRetrieveStores:
 * @see SHNetworkDelegate.h
 */
- (void)attemptRetrieveStoresWithZipcode:(NSString *)aZipcode distance:(NSString *)distance andDelegate:(id)delegate;


#pragma mark - Class Methods

+ (SHNetworkDelegate *)sharedDelegate;
+ (NSString *)applicationBaseUrl;
@end
