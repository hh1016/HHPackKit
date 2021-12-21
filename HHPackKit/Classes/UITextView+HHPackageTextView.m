//
//  UITextView+HHPackageTextView.m
//  HHKit
//
//  Created by lch on 2021/12/20.
//

#import "UITextView+HHPackageTextView.h"

@implementation UITextView (HHPackageTextView)


- (UITextView *(^)(CGRect rect))hh_frame{
    WS;
    return ^(CGRect rect){
        SS;
        strongSelf.frame = rect;
        return strongSelf;
    };
}
- (UITextView *(^)(UIColor *color))hh_backgroundColor{
    WS;
    return ^(UIColor *color){
        SS;
        strongSelf.backgroundColor = color;
        return strongSelf;
    };
}
- (UITextView *(^)(NSInteger cornerRadiusNum))hh_cornerRadius{
    WS;
    return ^(NSInteger cornerRadiusNum){
        SS;
        strongSelf.layer.cornerRadius = cornerRadiusNum;
        return strongSelf;
    };
}
- (UITextView *(^)(CGFloat borderWidthNum))hh_borderWidth{
    WS;
    return ^(CGFloat borderWidthNum){
        SS;
        strongSelf.layer.borderWidth = borderWidthNum;
        return strongSelf;
    };
}
- (UITextView *(^)(UIColor *borderColor))hh_borderColor{
    WS;
    return ^(UIColor *borderColor){
        SS;
        strongSelf.layer.borderColor = borderColor.CGColor;
        return strongSelf;
    };
}

- (UITextView *(^)(NSString *textString))hh_text{
    WS;
    return ^(NSString *textString){
        SS;
        strongSelf.text = textString;
        return strongSelf;
    };
}
- (UITextView *(^)(UIColor *textColor))hh_textColor{
    WS;
    return ^(UIColor *textColor){
        SS;
        strongSelf.textColor = textColor;
        return strongSelf;
    };
}
- (UITextView *(^)(NSTextAlignment textAlignment))hh_textAlignment{
    WS;
    return ^(NSTextAlignment textAlignment){
        SS;
        strongSelf.textAlignment = textAlignment;
        return strongSelf;
    };
}


@end
