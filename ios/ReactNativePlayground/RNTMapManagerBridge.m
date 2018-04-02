//
//  RNTMapManagerBridge.m
//  ReactNativePlayground
//
//  Created by Li, Haoxin on 4/1/18.
//  Copyright © 2018 Haoxin. All rights reserved.
//

#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>
#import <React/RCTConvert.h>
#import <React/RCTConvert+CoreLocation.h>
#import <React/RCTViewManager.h>

@interface RCTConvert(Mapkit)

+ (MKCoordinateSpan)MKCoordinateSpan:(id)json;
+ (MKCoordinateRegion)MKCoordinateRegion:(id)json;

@end

@implementation RCTConvert(MapKit)

+ (MKCoordinateSpan)MKCoordinateSpan:(id)json
{
    json = [self NSDictionary:json];
    return (MKCoordinateSpan){
        [self CLLocationDegrees:json[@"latitudeDelta"]],
        [self CLLocationDegrees:json[@"longitudeDelta"]]
    };
}

+ (MKCoordinateRegion)MKCoordinateRegion:(id)json
{
    return (MKCoordinateRegion){
        [self CLLocationCoordinate2D:json],
        [self MKCoordinateSpan:json]
    };
}

@end

@interface RCT_EXTERN_MODULE(RNTMapManager, RCTViewManager)

RCT_EXPORT_VIEW_PROPERTY(zoomEnabled, BOOL)
RCT_CUSTOM_VIEW_PROPERTY(region, MKCoordinateRegion, MKMapView)
{
    [view setRegion:(json ? [RCTConvert MKCoordinateRegion:json] : defaultView.region) animated:YES];
}

RCT_EXTERN_METHOD(view)

@end
