//
//  RCTConvert+TestManagerType.m
//  RNTextTest
//
//  Created by njw on 2018/11/14.
//  Copyright © 2018 njw. All rights reserved.
//

#import "RCTConvert+TestManagerType.h"

@implementation RCTConvert (TestManagerType)
RCT_ENUM_CONVERTER(RNTestManagerType, (
                                       @{ @"testManagerTypeNone" : @(RNTestManagerTypeNone),
                                          @"testManagerTypeDefault" : @(RNTestManagerTypeDefault),
                                          @"testManagerTypeCustome" : @(RNTestManagerTypeCustome)}),
                   RNTestManagerTypeNone, integerValue)
@end
