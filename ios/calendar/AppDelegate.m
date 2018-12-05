/**
 * Copyright (c) 2015-present, Facebook, Inc.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 */

#import "AppDelegate.h"
#import "ListViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
  

  self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
  ListViewController *listViewController = [[ListViewController alloc] initWithNibName:@"ListViewController" bundle:nil];
  UINavigationController *navroot = [[UINavigationController alloc] initWithRootViewController:listViewController];
  self.window.rootViewController = navroot;
  [self.window makeKeyAndVisible];
  return YES;
}

@end
