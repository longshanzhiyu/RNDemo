//
//  RNText.h
//  RNTextTest
//
//  Created by njw on 2018/11/14.
//  Copyright © 2018 njw. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <React/RCTComponent.h>

NS_ASSUME_NONNULL_BEGIN

@class RNText;
@protocol RNTextDelegate <NSObject>

- (void)text:(RNText *)text valueChange:(NSString *)value;

@end

@interface RNText : UIView
@property (copy, nonatomic) NSString *value;

@property (weak, nonatomic) id<RNTextDelegate> delegate;

@property (copy, nonatomic) RCTBubblingEventBlock onChange;
@end

NS_ASSUME_NONNULL_END
