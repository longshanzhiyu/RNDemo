//
//  RNTMapManager.m
//  calendar
//
//  Created by njw on 2018/11/28.
//  Copyright © 2018 Facebook. All rights reserved.
//

#import "RNTMapManager.h"
#import <MapKit/MapKit.h>

#import "RNTMapView.h"
#import "RCTConvert+MapKit.h"

@interface RNTMapManager () <MKMapViewDelegate>

@end

@implementation RNTMapManager

RCT_EXPORT_MODULE();
RCT_EXPORT_VIEW_PROPERTY(zoomEnabled, BOOL);
RCT_EXPORT_VIEW_PROPERTY(onRegionChange, RCTBubblingEventBlock);

RCT_CUSTOM_VIEW_PROPERTY(region, MKCoordinateRegion, MKMapView)
{
  [view setRegion:json ? [RCTConvert MKCoordinateRegion:json] : defaultView.region animated:YES];
}

- (UIView *)view
{
  RNTMapView *map = [RNTMapView new];
  map.delegate = self;
  return map;
}

#pragma mark MKMapViewDelegate

- (void)mapView:(RNTMapView *)mapView regionDidChangeAnimated:(BOOL)animated
{
  if (!mapView.onRegionChange) {
    return;
  }
  
  MKCoordinateRegion region = mapView.region;
  mapView.onRegionChange(@{
                           @"region": @{
                               @"latitude": @(region.center.latitude),
                               @"longitude": @(region.center.longitude),
                               @"latitudeDelta": @(region.span.latitudeDelta),
                               @"longitudeDelta": @(region.span.longitudeDelta),
                               }
                           });
}

@end