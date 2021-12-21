//
//  UIImageView+HHPackageImageView.m
//  HHKit
//
//  Created by lch on 2021/12/19.
//

#import "UIImageView+HHPackageImageView.h"

@implementation UIImageView (HHPackageImageView)
- (UIImageView *(^)(CGRect rect))hh_frame{
    WS;
    return ^(CGRect rect){
        SS;
        strongSelf.frame = rect;
        return strongSelf;
    };
}
- (UIImageView *(^)(UIColor *color))hh_backgroundColor{
    WS;
    return ^(UIColor *color){
        SS;
        strongSelf.backgroundColor = color;
        return strongSelf;
    };
}
- (UIImageView *(^)(NSInteger cornerRadiusNum))hh_cornerRadius{
    WS;
    return ^(NSInteger cornerRadiusNum){
        SS;
        strongSelf.layer.cornerRadius = cornerRadiusNum;
        return strongSelf;
    };
}
- (UIImageView *(^)(CGFloat borderWidthNum))hh_borderWidth{
    WS;
    return ^(CGFloat borderWidthNum){
        SS;
        strongSelf.layer.borderWidth = borderWidthNum;
        return strongSelf;
    };
}
- (UIImageView *(^)(UIColor *borderColor))hh_borderColor{
    WS;
    return ^(UIColor *borderColor){
        SS;
        strongSelf.layer.borderColor = borderColor.CGColor;
        return strongSelf;
    };
}
- (UIImageView *(^)(BOOL masksToBounds))hh_masksToBounds{
    WS;
    return ^(BOOL masksToBounds){
        SS;
        strongSelf.layer.masksToBounds = masksToBounds;
        return strongSelf;
    };
}
- (UIImageView *(^)(NSString *imageString))hh_image{
    WS;
    return ^(NSString *imageString){
        SS;
        strongSelf.image = [UIImage imageNamed:imageString];
        return strongSelf;
    };
}
- (UIImageView *(^)(NSData *imageData))hh_imageData{
    WS;
    return ^(NSData *imageData){
        SS;
        strongSelf.image = [UIImage imageWithData:imageData];
        return strongSelf;
    };
}
- (UIImageView *(^)(BOOL userInteractionEnabled))hh_userInteractionEnabled{
    WS;
    return ^(BOOL userInteractionEnabled){
        SS;
        strongSelf.userInteractionEnabled = userInteractionEnabled;
        return strongSelf;
    };
}

@end
