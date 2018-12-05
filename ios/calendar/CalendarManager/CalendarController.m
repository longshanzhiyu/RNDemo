//
//  CalendarController.m
//  calendar
//
//  Created by njw on 2018/11/27.
//  Copyright © 2018 Facebook. All rights reserved.
//

#import "CalendarController.h"
#import <React/RCTBundleURLProvider.h>
#import <React/RCTRootView.h>

@interface CalendarController ()

@end

@implementation CalendarController

- (void)viewDidLoad {
    [super viewDidLoad];
  
  self.title = @"CalendarController";
  
  NSURL *jsCodeLocation;
  
  jsCodeLocation = [[RCTBundleURLProvider sharedSettings] jsBundleURLForBundleRoot:@"index" fallbackResource:nil];
  
  RCTRootView *rootView = [[RCTRootView alloc] initWithBundleURL:jsCodeLocation
                                                      moduleName:@"Module1"
                                               initialProperties:nil
                                                   launchOptions:nil];
  rootView.backgroundColor = [[UIColor alloc] initWithRed:1.0f green:1.0f blue:1.0f alpha:1];
  self.view = rootView;
}

@end
