//
//  UIView+HHPackageView.h
//  HHKit
//
//  Created by lch on 2021/12/18.
//

#import <UIKit/UIKit.h>
#import "HHKit.h"
NS_ASSUME_NONNULL_BEGIN

@interface UIView (HHPackageView)

- (UIView *(^)(CGRect rect))hh_frame;
- (UIView *(^)(UIColor *color))hh_backgroundColor;
- (UIView *(^)(NSInteger cornerRadiusNum))hh_cornerRadius;
- (UIView *(^)(CGFloat borderWidthNum))hh_borderWidth;
- (UIView *(^)(UIColor *borderColor))hh_borderColor;



@end

NS_ASSUME_NONNULL_END
