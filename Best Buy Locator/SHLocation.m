//
//  SHLocation.m
//  StoreLocator
//
//  Created by Gerry O'Brien on 11/5/13.
//  Copyright (c) 2013 Smart Homes. All rights reserved.
//

#import "SHLocation.h"

@implementation SHLocation

-(id) initWithCoordinate:(CLLocationCoordinate2D)coordinate title:(NSString *)title {
    if ((self = [super init])) {
        self.coordinate =coordinate;
        self.title = title;
    }
    return self;
}

@end
