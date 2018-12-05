//
//  CalendarManager.m
//  calendar
//
//  Created by njw on 2018/11/27.
//  Copyright © 2018 Facebook. All rights reserved.
//

#import "CalendarManager.h"
#import <React/RCTLog.h>
#import <React/RCTConvert.h>

@implementation CalendarManager

RCT_EXPORT_MODULE();

RCT_EXPORT_METHOD(addEvent:(NSString *)name location:(NSString *)location) {
  RCTLogInfo(@"Pretending to create an event %@ at %@", name, location);
}

//RCT_EXPORT_METHOD(addEvent:(NSString *)name location:(NSString *)location date:(nonnull NSNumber *)secondsSinceUnixEpoch) {
//  NSDate *date = [RCTConvert NSDate:secondsSinceUnixEpoch];
//  NSLog(@"%@", date);
//}

RCT_EXPORT_METHOD(addEvent:(NSString *)name location:(NSString *)location date:(NSString *)ISO8601DateString)
{
  NSDate *date = [RCTConvert NSDate:ISO8601DateString];
  NSLog(@"%@", date);
}

RCT_EXPORT_METHOD(addEvent:(NSString *)name details:(NSDictionary *)details) {
  NSString *location = [RCTConvert NSString:details[@"location"]];
  NSDate *time = [RCTConvert NSDate:details[@"time"]];
  NSLog(@"%@ , %@", location, time);
}

RCT_EXPORT_METHOD(findEvents:(RCTResponseSenderBlock)callback) {
  NSArray *events = @[@"a", @"b", @"c"];
  callback(@[[NSNull null], events]);
}

RCT_REMAP_METHOD(findEvents, findEventsWithResolver:(RCTPromiseResolveBlock)resolve
                 rejecter:(RCTPromiseRejectBlock)reject) {
  NSArray *events = @[@"a", @"b", @"c"];
  if (events) {
    resolve(events);
  }
  else {
    NSError *error = [[NSError alloc] init];
    reject(@"no_events", @"There were no events", error);
  }
}

@end
