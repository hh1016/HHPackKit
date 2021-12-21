//
//  UITextView+HHPackageTextView.h
//  HHKit
//
//  Created by lch on 2021/12/20.
//

#import <UIKit/UIKit.h>
#import "HHKit.h"
NS_ASSUME_NONNULL_BEGIN

@interface UITextView (HHPackageTextView)
- (UITextView *(^)(CGRect rect))hh_frame;
- (UITextView *(^)(UIColor *color))hh_backgroundColor;
- (UITextView *(^)(NSInteger cornerRadiusNum))hh_cornerRadius;
- (UITextView *(^)(CGFloat borderWidthNum))hh_borderWidth;
- (UITextView *(^)(UIColor *borderColor))hh_borderColor;
- (UITextView *(^)(NSString *textString))hh_text;
- (UITextView *(^)(UIColor *textColor))hh_textColor;
- (UITextView *(^)(NSTextAlignment textAlignment))hh_textAlignment;
@end

NS_ASSUME_NONNULL_END
