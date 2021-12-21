//
//  UILabel+HHPackageLabel.h
//  HHKit
//
//  Created by lch on 2021/12/18.
//

#import <UIKit/UIKit.h>
#import "HHKit.h"
NS_ASSUME_NONNULL_BEGIN

@interface UILabel (HHPackageLabel)

- (UILabel *(^)(CGRect rect))hh_frame;
- (UILabel *(^)(UIColor *color))hh_backgroundColor;
- (UILabel *(^)(NSInteger cornerRadiusNum))hh_cornerRadius;
- (UILabel *(^)(CGFloat borderWidthNum))hh_borderWidth;
- (UILabel *(^)(UIColor *borderColor))hh_borderColor;
- (UILabel *(^)(CGFloat systemFontNum))hh_systemFont;
- (UILabel *(^)(CGFloat boldSystemFontNum))hh_boldSystemFont;
- (UILabel *(^)(NSString *textString))hh_text;
- (UILabel *(^)(UIColor *textColor))hh_textColor;
- (UILabel *(^)(NSInteger labelNumberOfLines))hh_numberOfLines;
- (UILabel *(^)(NSTextAlignment textAlignment))hh_textAlignment;


@end

NS_ASSUME_NONNULL_END
