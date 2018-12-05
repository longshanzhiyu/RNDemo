//
//  RNPageController.m
//  calendar
//
//  Created by njw on 2018/12/5.
//  Copyright © 2018 Facebook. All rights reserved.
//

#import "RNPageController.h"
#import <React/RCTRootView.h>
#import <React/RCTBundleURLProvider.h>
//#import <React/RCTUIManager.h>

@interface RNPageController ()

@end

@implementation RNPageController

- (void)viewDidLoad {
    [super viewDidLoad];
  
  self.navigationController.navigationBar.hidden = YES;
  
  [RCTBundleURLProvider sharedSettings].jsLocation = @"127.0.0.1";
  //    [RCTBundleURLProvider sharedSettings].jsLocation = @"192.168.1.102";
  NSURL *jsCodeLocation = [[RCTBundleURLProvider sharedSettings] jsBundleURLForBundleRoot:@"index" fallbackResource:nil];
  
  RCTRootView *rootView = [[RCTRootView alloc] initWithBundleURL:jsCodeLocation
                                                      moduleName:@"RNPage"
                                               initialProperties:nil
                                                   launchOptions:nil];
  
  rootView.backgroundColor = [[UIColor alloc] initWithRed:1.0f green:1.0f blue:1.0f alpha:1];
  self.view = rootView;
}

- (void)viewDidDisappear:(BOOL)animated {
  [super viewDidDisappear:animated];
  self.navigationController.navigationBar.hidden = NO;
}

-(void)dealloc {
  NSLog(@"=======>RNVC dealloc");
}

@end
