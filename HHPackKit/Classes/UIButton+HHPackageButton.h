//
//  UIButton+HHPackageButton.h
//  HHKit
//
//  Created by lch on 2021/12/19.
//

#import <UIKit/UIKit.h>
#import "HHKit.h"

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSUInteger, HHImagePosition) {
    HHImagePositionLeft = 0,  //default
    HHImagePositionTop,
    HHImagePositionRight,
    HHImagePositionBottom,
};

typedef void (^HHButtonClicked)(UIButton *button);

@interface UIButton (HHPackageButton)


- (UIButton *(^)(CGRect rect))hh_frame;
- (UIButton *(^)(UIColor *color))hh_backgroundColor;
- (UIButton *(^)(NSInteger cornerRadiusNum))hh_cornerRadius;
- (UIButton *(^)(CGFloat borderWidthNum))hh_borderWidth;
- (UIButton *(^)(UIColor *borderColor))hh_borderColor;
- (UIButton *(^)(BOOL masksToBounds))hh_masksToBounds;
- (UIButton *(^)(CGFloat systemFontNum))hh_systemFont;
- (UIButton *(^)(CGFloat boldSystemFontNum))hh_boldSystemFont;
- (UIButton *(^)(NSString *textString))hh_textNormal;
- (UIButton *(^)(NSString *textString))hh_textSelected;
- (UIButton *(^)(UIColor *textColor))hh_textColorNormal;
- (UIButton *(^)(UIColor *textColor))hh_textColorSelected;
- (UIButton *(^)(NSString *imageString))hh_imageColorNormal;
- (UIButton *(^)(NSString *imageString))hh_imageColorSelected;
- (UIButton *(^)(NSString *imageString))hh_backgroundImageNormal;
- (UIButton *(^)(NSString *imageString))hh_backgroundImageSelected;
- (UIButton *(^)(NSInteger labelNumberOfLines))hh_numberOfLines;
- (UIButton *(^)(UIControlContentHorizontalAlignment textAlignment))hh_contentHorizontalAlignment;
- (UIButton *(^)(UIControlContentVerticalAlignment textAlignment))hh_contentVerticalAlignment;
- (UIButton *(^)(UIViewController *viewController,SEL action))hh_addTarget;
- (void)hh_buttonClicked:(HHButtonClicked)buttonClickedBlock;
- (UIButton *(^)(HHImagePosition position,CGFloat padding))hh_ImageDirectionalRect;
/**
 imagePlacement    iOS 15以上枚举值 image和title 布局方向
 padding           间距
 */
- (UIButton *(^)(NSDirectionalRectEdge imagePlacement,CGFloat padding))hh_ImageDirectionalRectIOS15Later API_AVAILABLE(ios(15.0));



@end

NS_ASSUME_NONNULL_END
