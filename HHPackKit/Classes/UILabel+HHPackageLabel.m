//
//  UILabel+HHPackageLabel.m
//  HHKit
//
//  Created by lch on 2021/12/18.
//

#import "UILabel+HHPackageLabel.h"

@implementation UILabel (HHPackageLabel)



#pragma mark - UILabel 的方法
- (UILabel *(^)(CGRect rect))hh_frame{
    WS;
    return ^(CGRect rect){
        SS;
        strongSelf.frame = rect;
        return strongSelf;
    };
}
- (UILabel *(^)(UIColor *color))hh_backgroundColor{
    WS;
    return ^(UIColor *color){
        SS;
        strongSelf.backgroundColor = color;
        return strongSelf;
    };
}
- (UILabel *(^)(NSInteger cornerRadiusNum))hh_cornerRadius{
    WS;
    return ^(NSInteger cornerRadiusNum){
        SS;
        strongSelf.layer.cornerRadius = cornerRadiusNum;
        return strongSelf;
    };
}
- (UILabel *(^)(CGFloat borderWidthNum))hh_borderWidth{
    WS;
    return ^(CGFloat borderWidthNum){
        SS;
        strongSelf.layer.borderWidth = borderWidthNum;
        return strongSelf;
    };
}
- (UILabel *(^)(UIColor *borderColor))hh_borderColor{
    WS;
    return ^(UIColor *borderColor){
        SS;
        strongSelf.layer.borderColor = borderColor.CGColor;
        return strongSelf;
    };
}
- (UILabel *(^)(CGFloat systemFontNum))hh_systemFont{
    WS;
    return ^(CGFloat systemFontNum){
        SS;
        strongSelf.font = [UIFont systemFontOfSize:systemFontNum];
        return strongSelf;
    };
}
- (UILabel *(^)(CGFloat boldSystemFontNum))hh_boldSystemFont{
    WS;
    return ^(CGFloat boldSystemFontNum){
        SS;
        strongSelf.font = [UIFont boldSystemFontOfSize:boldSystemFontNum];
        return strongSelf;
    };
}
- (UILabel *(^)(NSString *textString))hh_text{
    WS;
    return ^(NSString *textString){
        SS;
        strongSelf.text = textString;
        return strongSelf;
    };
}
- (UILabel *(^)(UIColor *textColor))hh_textColor{
    WS;
    return ^(UIColor *textColor){
        SS;
        strongSelf.textColor = textColor;
        return strongSelf;
    };
}
- (UILabel *(^)(NSInteger labelNumberOfLines))hh_numberOfLines{
    WS;
    return ^(NSInteger labelNumberOfLines){
        SS;
        strongSelf.numberOfLines = labelNumberOfLines;
        return strongSelf;
    };
}
- (UILabel *(^)(NSTextAlignment textAlignment))hh_textAlignment{
    WS;
    return ^(NSTextAlignment textAlignment){
        SS;
        strongSelf.textAlignment = textAlignment;
        return strongSelf;
    };
}

@end
