//
//  STNetworkDelegate.m
//  sartorii
//
//  Created by Gabelmann Fredrick on 4/25/12.
//  Copyright (c) 2012 Reticent Media, Inc. All rights reserved.
//

#import <RestKit/RKRequestSerialization.h>
#import "SHNetworkDelegate.h"
#import "SHNetworkConfigurationWS.h"
#import "SHRetrieveStoresWS.h"


@implementation SHNetworkDelegate


#pragma mark - Instance Methods

- (void)configureNetworkLayer
{
    SHNetworkConfigurationWS *networkConfigurator = [[SHNetworkConfigurationWS alloc] init];
    [networkConfigurator initializeNetwork];
}


- (void)attemptRetrieveStoresWithZipcode:(NSString *)aZipcode distance:(NSString *)distance andDelegate:(id)delegate
{
    SHRetrieveStoresWS *workerSession = [[SHRetrieveStoresWS alloc] initWithZipcode:aZipcode distance:distance];
    workerSession.delegate = delegate;
    [workerSession execute];
}


#pragma mark - Class Methods

+ (SHNetworkDelegate *)sharedDelegate
{
    static SHNetworkDelegate *sharedDelegate = nil;
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        sharedDelegate = [[SHNetworkDelegate alloc] init];
    });
    
    return sharedDelegate;
}


+ (NSString *)applicationBaseUrl
{
    NSString *baseUrl = nil;
    baseUrl = kApplicationDevelopmentBaseUrl;
    return baseUrl;
}
@end
