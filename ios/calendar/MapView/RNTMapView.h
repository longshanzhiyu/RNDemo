//
//  RNTMapView.h
//  calendar
//
//  Created by njw on 2018/11/28.
//  Copyright © 2018 Facebook. All rights reserved.
//

#import <MapKit/MapKit.h>
#import <React/RCTComponent.h>

NS_ASSUME_NONNULL_BEGIN

@interface RNTMapView : MKMapView
@property (nonatomic, copy) RCTBubblingEventBlock onRegionChange;
@end

NS_ASSUME_NONNULL_END
