//
//  UITextField+HHPackageTextFiled.h
//  HHKit
//
//  Created by lch on 2021/12/19.
//

#import <UIKit/UIKit.h>
#import "HHKit.h"
NS_ASSUME_NONNULL_BEGIN

@interface UITextField (HHPackageTextFiled)

- (UITextField *(^)(CGRect rect))hh_frame;
- (UITextField *(^)(NSString *textString))hh_text;
- (UITextField *(^)(UIColor *color))hh_textColor;
- (UITextField *(^)(UIColor *color))hh_backgroundColor;
- (UITextField *(^)(NSInteger cornerRadiusNum))hh_cornerRadius;
- (UITextField *(^)(CGFloat borderWidthNum))hh_borderWidth;
- (UITextField *(^)(UIColor *borderColor))hh_borderColor;
- (UITextField *(^)(CGFloat systemFontNum))hh_systemFont;
- (UITextField *(^)(CGFloat boldSystemFontNum))hh_boldSystemFont;
- (UITextField *(^)(NSString *placeholder))hh_placeholder;
/**
 placeholder        提示语
 color              提示语字体颜色
 */
- (UITextField *(^)(NSString *placeholder,UIColor *color))hh_placeholderTextColor;
- (UITextField *(^)(NSTextAlignment textAlignment))hh_textAlignment;
- (UITextField *(^)(UIView *leftView))hh_leftView;
- (UITextField *(^)(UIView *rightView))hh_rightView;
- (UITextField *(^)(UITextFieldViewMode leftViewMode))hh_leftViewMode;
- (UITextField *(^)(UITextFieldViewMode rightViewMode))hh_rightViewMode;
- (UITextField *(^)(NSString *imageString,CGFloat imageLeftSapce,CGFloat imageRightSapce))hh_leftViewAndSapce;
- (UITextField *(^)(BOOL secureTextEntry))hh_secureTextEntry;
- (UITextField *(^)(UIViewController *viewController,SEL action))hh_addTarget;
- (UITextField *(^)(UIKeyboardType keyboardType))hh_keyboardType;
- (UITextField *(^)(UIReturnKeyType returnKeyType))hh_returnKeyType;
@end

NS_ASSUME_NONNULL_END
