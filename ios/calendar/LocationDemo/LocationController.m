//
//  LocationController.m
//  calendar
//
//  Created by njw on 2018/12/4.
//  Copyright © 2018 Facebook. All rights reserved.
//

#import "LocationController.h"
#import <React/RCTBundleURLProvider.h>
#import <React/RCTRootView.h>

@interface LocationController ()

@end

@implementation LocationController

- (void)viewDidLoad {
    [super viewDidLoad];
  
    self.title = @"Location";
  
    self.edgesForExtendedLayout = UIRectEdgeNone;
  
    NSURL *jsCodeLocation;
  
    jsCodeLocation = [[RCTBundleURLProvider sharedSettings] jsBundleURLForBundleRoot:@"index" fallbackResource:nil];
  
    RCTRootView *rootView = [[RCTRootView alloc] initWithBundleURL:jsCodeLocation
                                                        moduleName:@"Location"
                                                 initialProperties:nil
                                                     launchOptions:nil];
    rootView.backgroundColor = [[UIColor alloc] initWithRed:1.0f green:1.0f blue:1.0f alpha:1];
    self.view = rootView;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
