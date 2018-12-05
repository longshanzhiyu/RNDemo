//
//  BridgeController.m
//  calendar
//
//  Created by njw on 2018/11/28.
//  Copyright © 2018 Facebook. All rights reserved.
//

#import "BridgeController.h"
#import <React/RCTBundleURLProvider.h>
#import <React/RCTRootView.h>
#import "Bridge.h"

@interface BridgeController () <RCTBridgeModule>

@end

@implementation BridgeController

- (void)viewDidLoad {
    [super viewDidLoad];
  
  self.title = @"BridgeController";
  
  RCTBridge *bridge = [[RCTBridge alloc] initWithDelegate:[[Bridge alloc] init] launchOptions:nil];
  
  RCTRootView *rootView = [[RCTRootView alloc]
                           initWithBridge:bridge
                           moduleName:@"Module2"
                           initialProperties:nil];
   self.view = rootView;
}

RCT_EXPORT_MODULE();

- (NSDictionary *)constantsToExport
{
  return @{ @"firstDayOfTheWeek": @"Monday" };
}

+ (BOOL)requiresMainQueueSetup {
  return YES;
}

@end
