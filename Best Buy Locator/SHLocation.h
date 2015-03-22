//
//  SHLocation.h
//  StoreLocator
//
//  Created by Gerry O'Brien on 11/5/13.
//  Copyright (c) 2013 Smart Homes. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface SHLocation : NSObject <MKAnnotation>

@property (copy, nonatomic) NSString *title;
@property (nonatomic,assign) CLLocationCoordinate2D coordinate;

-(id) initWithCoordinate:(CLLocationCoordinate2D)coordinate title:(NSString *)title;

@end
