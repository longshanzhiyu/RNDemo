//
//  RNIOSExportJsToReact.h
//  calendar
//
//  Created by njw on 2018/11/27.
//  Copyright © 2018 Facebook. All rights reserved.
//

#import <React/RCTEventEmitter.h>

#define RNIOSExportJsToReact(noti) [[NSNotificationCenter defaultCenter] postNotificationName:@"event-emitted" object:noti];

NS_ASSUME_NONNULL_BEGIN

@interface RNIOSExportJsToReact : RCTEventEmitter <RCTBridgeModule>

@end

NS_ASSUME_NONNULL_END
