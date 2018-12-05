//
//  RNIOSExportJsToReact.m
//  calendar
//
//  Created by njw on 2018/11/27.
//  Copyright © 2018 Facebook. All rights reserved.
//

#import "RNIOSExportJsToReact.h"

@implementation RNIOSExportJsToReact

RCT_EXPORT_MODULE();

-(NSArray<NSString *> *)supportedEvents {
  return @[@"SpotifyHelper"]; //这里返回的将是你要发送的消息名的数组。
}
- (void)startObserving
{
  [[NSNotificationCenter defaultCenter] addObserver:self
                                           selector:@selector(emitEventInternal:)
                                               name:@"event-emitted"
                                             object:nil];
}
- (void)stopObserving
{
  [[NSNotificationCenter defaultCenter] removeObserver:self];
}

- (void)emitEventInternal:(NSNotification *)notification
{
  [self sendEventWithName:@"SpotifyHelper"
                     body:notification.object];
}

//+ (void)emitEventWithName:(NSString *)name andPayload:(NSDictionary *)payload
//{
//  [[NSNotificationCenter defaultCenter] postNotificationName:@"event-emitted"
//                                                      object:self
//                                                    userInfo:payload];
//}

RCT_EXPORT_METHOD(remove) {
  [[NSNotificationCenter defaultCenter] removeObserver:self];
}
@end
