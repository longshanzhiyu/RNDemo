//
//  RNTestManager.m
//  calendar
//
//  Created by njw on 2018/12/5.
//  Copyright © 2018 Facebook. All rights reserved.
//

#import "RNTestManager.h"
#import "RCTConvert+TestManagerType.h"
#import <React/RCTEventDispatcher.h>
#import <React/RCTBridge.h>

@interface RNTestManager ()
@property (assign, nonatomic) RNTestManagerType type;
@end

@implementation RNTestManager

- (instancetype)init {
  if (self = [super init]) {
    self.type = -1;
  }
  return self;
}

@synthesize bridge = _bridge;

RCT_EXPORT_MODULE(Test)
RCT_EXPORT_METHOD(print:(NSString *)text) {
    NSLog(@"%@", text);
}

RCT_EXPORT_METHOD(add:(NSInteger)numA andNumB:(NSInteger)numB result:(RCTResponseSenderBlock)callback) {
  callback(@[@(numA + numB)]);
}

RCT_EXPORT_METHOD(updateTestManagerType:(RNTestManagerType)type
                  completion:(RCTResponseSenderBlock)callback) {
  NSLog(@"%@", @(type));
  [self changeType:type];
  callback(@[@(type), @"success"]);
}

- (void)changeType:(RNTestManagerType)type {
  if (type != self.type) {
    self.type = type;
    [self.bridge.eventDispatcher sendAppEventWithName:@"typeChange"
                                                 body:@{
                                                        @"type" : @(self.type)
                                                        }];
  }
}

- (NSDictionary *)constantsToExport {
  return @{
           @"defaultValue": @"default value",
           @"testManagerTypeNone" : @(RNTestManagerTypeNone),
           @"testManagerTypeDefault" : @(RNTestManagerTypeDefault),
           @"testManagerTypeCustome" : @(RNTestManagerTypeCustome)
           };
}

- (dispatch_queue_t)methodQueue {
  return dispatch_get_main_queue();
}

@end
