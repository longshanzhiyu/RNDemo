//
//  VCManager.m
//  calendar
//
//  Created by njw on 2018/12/5.
//  Copyright © 2018 Facebook. All rights reserved.
//

#import "VCManager.h"
#import <React/RCTUIManager.h>

@implementation VCManager
@synthesize bridge = _bridge;

RCT_EXPORT_MODULE();

RCT_EXPORT_METHOD(print_str:(NSString *)text) {
  NSLog(@"%@", text);
}

RCT_EXPORT_METHOD(popViewControllerXYZ:(nonnull NSNumber *)reactTag) // Component 对象的 reactTag
{
  RCTUIManager *uiManager = _bridge.uiManager;
  dispatch_async(uiManager.methodQueue, ^{
    [uiManager addUIBlock:^(RCTUIManager *uiManager, NSDictionary<NSNumber *,UIView *> *viewRegistry) {
      UIView *view = viewRegistry[reactTag];
      UIViewController *viewController = (UIViewController *)view.reactViewController;
      [viewController.navigationController popViewControllerAnimated:YES];
      //            UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"warnning" message:@"I'm a boy" preferredStyle:UIAlertControllerStyleAlert];
      //            [viewController presentViewController:alert animated:YES completion:nil];
    }];
  });
}
@end
