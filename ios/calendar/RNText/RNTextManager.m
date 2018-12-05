//
//  RNTextManager.m
//  RNTextTest
//
//  Created by njw on 2018/11/14.
//  Copyright © 2018 njw. All rights reserved.
//

#import "RNTextManager.h"
#import "RNText.h"

@interface RNTextManager ()<RNTextDelegate>

@end

@implementation RNTextManager
RCT_EXPORT_MODULE()
RCT_EXPORT_VIEW_PROPERTY(value, NSString)
RCT_EXPORT_VIEW_PROPERTY(onChange, RCTBubblingEventBlock)

- (UIView *)view {
    RNText *text = [[RNText alloc] init];
    text.delegate = self;
    return text;
}

- (void)text:(RNText *)text valueChange:(NSString *)value {
    if (!text.onChange) {
        return;
    }
    NSDictionary *params = @{
                             @"value" : value
                             };
    text.onChange(params);
}
@end
