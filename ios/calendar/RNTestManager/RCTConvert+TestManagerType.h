//
//  RCTConvert+TestManagerType.h
//  RNTextTest
//
//  Created by njw on 2018/11/14.
//  Copyright © 2018 njw. All rights reserved.
//

#import <React/RCTConvert.h>

typedef NS_ENUM(NSInteger, RNTestManagerType) {
    RNTestManagerTypeNone = 1,
    RNTestManagerTypeDefault,
    RNTestManagerTypeCustome,
};

NS_ASSUME_NONNULL_BEGIN

@interface RCTConvert (TestManagerType)

@end

NS_ASSUME_NONNULL_END
