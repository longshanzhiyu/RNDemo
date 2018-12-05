//
//  Bridge.m
//  calendar
//
//  Created by njw on 2018/11/28.
//  Copyright © 2018 Facebook. All rights reserved.
//

#import "Bridge.h"

@implementation Bridge

#pragma mark - RCTBridgeDelegate方法

- (NSURL *)sourceURLForBridge:(RCTBridge *)bridge {
  NSURL *url = [[RCTBundleURLProvider sharedSettings] jsBundleURLForBundleRoot:@"index" fallbackResource:nil];
  return url;
}

@end
