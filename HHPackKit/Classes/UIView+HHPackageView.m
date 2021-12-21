//
//  UIView+HHPackageView.m
//  HHKit
//
//  Created by lch on 2021/12/18.
//

#import "UIView+HHPackageView.h"

@implementation UIView (HHPackageView)


- (UIView *(^)(CGRect rect))hh_frame{
    WS;
    return ^(CGRect rect){
        SS;
        strongSelf.frame = rect;
        return self;
    };
}
- (UIView *(^)(UIColor *color))hh_backgroundColor{
    WS;
    return ^(UIColor *color){
        SS;
        strongSelf.backgroundColor = color;
        return self;
    };
}
- (UIView *(^)(NSInteger cornerRadiusNum))hh_cornerRadius{
    WS;
    return ^(NSInteger cornerRadiusNum){
        SS;
        strongSelf.layer.cornerRadius = cornerRadiusNum;
        return self;
    };
}
- (UIView *(^)(CGFloat borderWidthNum))hh_borderWidth{
    WS;
    return ^(CGFloat borderWidthNum){
        SS;
        strongSelf.layer.borderWidth = borderWidthNum;
        return self;
    };
}
- (UIView *(^)(UIColor *borderColor))hh_borderColor{
    WS;
    return ^(UIColor *borderColor){
        SS;
        strongSelf.layer.borderColor = borderColor.CGColor;
        return self;
    };
}


@end
