//
//  UIButton+HHPackageButton.m
//  HHKit
//
//  Created by lch on 2021/12/19.
//

#import "UIButton+HHPackageButton.h"
#import<objc/runtime.h>

@implementation UIButton (HHPackageButton)
- (UIButton *(^)(CGRect rect))hh_frame{
    WS;
    return ^(CGRect rect){
        SS;
        strongSelf.frame = rect;
        return strongSelf;
    };
}
- (UIButton *(^)(UIColor *color))hh_backgroundColor{
    WS;
    return ^(UIColor *color){
        SS;
        strongSelf.backgroundColor = color;
        return strongSelf;
    };
}
- (UIButton *(^)(NSInteger cornerRadiusNum))hh_cornerRadius{
    WS;
    return ^(NSInteger cornerRadiusNum){
        SS;
        strongSelf.layer.cornerRadius = cornerRadiusNum;
        return strongSelf;
    };
}
- (UIButton *(^)(CGFloat borderWidthNum))hh_borderWidth{
    WS;
    return ^(CGFloat borderWidthNum){
        SS;
        strongSelf.layer.borderWidth = borderWidthNum;
        return strongSelf;
    };
}
- (UIButton *(^)(UIColor *borderColor))hh_borderColor{
    WS;
    return ^(UIColor *borderColor){
        SS;
        strongSelf.layer.borderColor = borderColor.CGColor;
        return strongSelf;
    };
}
- (UIButton *(^)(BOOL masksToBounds))hh_masksToBounds{
    WS;
    return ^(BOOL masksToBounds){
        SS;
        strongSelf.layer.masksToBounds = masksToBounds;
        return strongSelf;
    };
}
- (UIButton *(^)(CGFloat systemFontNum))hh_systemFont{
    WS;
    return ^(CGFloat systemFontNum){
        SS;
        strongSelf.titleLabel.font = [UIFont systemFontOfSize:systemFontNum];
        return strongSelf;
    };
}
- (UIButton *(^)(CGFloat boldSystemFontNum))hh_boldSystemFont{
    WS;
    return ^(CGFloat boldSystemFontNum){
        SS;
        strongSelf.titleLabel.font = [UIFont boldSystemFontOfSize:boldSystemFontNum];
        return strongSelf;
    };
}
- (UIButton *(^)(NSString *textString))hh_textNormal{
    WS;
    return ^(NSString *textString){
        SS;
        [strongSelf setTitle:textString forState:UIControlStateNormal];
        return strongSelf;
    };
}
- (UIButton *(^)(NSString *textString))hh_textSelected{
    WS;
    return ^(NSString *textString){
        SS;
        [strongSelf setTitle:textString forState:UIControlStateSelected];
        return strongSelf;
    };
}
- (UIButton *(^)(UIColor *textColor))hh_textColorNormal{
    WS;
    return ^(UIColor *textColor){
        SS;
        [strongSelf setTitleColor:textColor forState:UIControlStateNormal];
        return strongSelf;
    };
}
- (UIButton *(^)(UIColor *textColor))hh_textColorSelected{
    WS;
    return ^(UIColor *textColor){
        SS;
        [strongSelf setTitleColor:textColor forState:UIControlStateSelected];
        return strongSelf;
    };
}

- (UIButton *(^)(NSString *imageString))hh_imageColorNormal{
    WS;
    return ^(NSString *imageString){
        SS;
        [strongSelf setImage:[UIImage imageNamed:imageString] forState:UIControlStateNormal];
        return strongSelf;
    };
}
- (UIButton *(^)(NSString *imageString))hh_imageColorSelected{
    WS;
    return ^(NSString *imageString){
        SS;
        [strongSelf setImage:[UIImage imageNamed:imageString] forState:UIControlStateSelected];
        return strongSelf;
    };
}


- (UIButton *(^)(NSString *imageString))hh_backgroundImageNormal{
    WS;
    return ^(NSString *imageString){
        SS;
        [strongSelf setBackgroundImage:[UIImage imageNamed:imageString] forState:UIControlStateNormal];
        return strongSelf;
    };
}
- (UIButton *(^)(NSString *imageString))hh_backgroundImageSelected{
    WS;
    return ^(NSString *imageString){
        SS;
        [strongSelf setBackgroundImage:[UIImage imageNamed:imageString] forState:UIControlStateSelected];
        return strongSelf;
    };
}


- (UIButton *(^)(NSInteger labelNumberOfLines))hh_numberOfLines{
    WS;
    return ^(NSInteger labelNumberOfLines){
        SS;
        strongSelf.titleLabel.numberOfLines = labelNumberOfLines;
        return strongSelf;
    };
}
- (UIButton *(^)(UIControlContentHorizontalAlignment textAlignment))hh_contentHorizontalAlignment{
    WS;
    return ^(UIControlContentHorizontalAlignment textAlignment){
        SS;
        strongSelf.contentHorizontalAlignment = textAlignment;
        return strongSelf;
    };
}
- (UIButton *(^)(UIControlContentVerticalAlignment textAlignment))hh_contentVerticalAlignment{
    WS;
    return ^(UIControlContentVerticalAlignment textAlignment){
        SS;
        strongSelf.contentVerticalAlignment = textAlignment;
        return strongSelf;
    };
}

- (UIButton *(^)(UIViewController *viewController,SEL action))hh_addTarget{
    WS;
    return ^(UIViewController *viewController,SEL action){
        SS;
        [strongSelf addTarget:viewController action:action forControlEvents:UIControlEventTouchUpInside];
        return strongSelf;
    };
}
/**
 position       iOS 15以下枚举值 image和title 布局方向
 padding        间距
 */
- (UIButton *(^)(HHImagePosition position,CGFloat padding))hh_ImageDirectionalRect{
    WS;
    return ^(HHImagePosition position,CGFloat padding){
        SS;
        CGFloat imgViewW = strongSelf.imageView.bounds.size.width;
        CGFloat imgViewH = strongSelf.imageView.bounds.size.height;
        CGFloat titleLabelW = strongSelf.titleLabel.bounds.size.width;
        CGFloat titleLabH = strongSelf.titleLabel.bounds.size.height;
        CGSize textSize = [strongSelf.titleLabel.text sizeWithAttributes:@{NSFontAttributeName:strongSelf.titleLabel.font}];
        //这里是为了解决文字过长的情况下，图片位置错误的情况
        CGSize frameSize = CGSizeMake(ceilf(textSize.width), ceilf(textSize.height));
        if (frameSize.width > titleLabelW) {  //如果文字长度大于label的宽度
            titleLabelW = frameSize.width;
        }
        CGFloat margin = padding;
        CGFloat halfPadding = padding/2.0;
        switch (position) {
            case HHImagePositionLeft:
            {
                [strongSelf setImageEdgeInsets:UIEdgeInsetsMake(0, -halfPadding, 0, halfPadding)];
                [strongSelf setTitleEdgeInsets:UIEdgeInsetsMake(0, halfPadding, 0, -halfPadding)];
            }
                break;
            case HHImagePositionTop:
            {
                // button图片的偏移量
                [strongSelf setImageEdgeInsets:UIEdgeInsetsMake(0, 0, titleLabH + margin, -titleLabelW)];
                // button标题的偏移量
                [strongSelf setTitleEdgeInsets:UIEdgeInsetsMake(imgViewH + margin, -imgViewW, 0, 0)];
            }
                break;
            case HHImagePositionRight:
            {
                // button标题的偏移量
                strongSelf.titleEdgeInsets = UIEdgeInsetsMake(0, -strongSelf.imageView.bounds.size.width - halfPadding, 0, strongSelf.imageView.bounds.size.width + halfPadding);
                // button图片的偏移量
                strongSelf.imageEdgeInsets = UIEdgeInsetsMake(0, strongSelf.titleLabel.bounds.size.width + halfPadding, 0, -strongSelf.titleLabel.bounds.size.width - halfPadding);
            }
                break;
            default:
            {
                [strongSelf setImageEdgeInsets:UIEdgeInsetsMake(titleLabH + margin,0, 0, -titleLabelW)];
                [strongSelf setTitleEdgeInsets:UIEdgeInsetsMake(0, -imgViewW, imgViewH + margin, 0)];
            }
                break;
        }
        return strongSelf;
    };
}
/**
 imagePlacement    iOS 15以上枚举值 image和title 布局方向
 padding           间距
 */
- (UIButton *(^)(NSDirectionalRectEdge imagePlacement,CGFloat padding))hh_ImageDirectionalRectIOS15Later API_AVAILABLE(ios(15.0)){
    WS;
    if (@available(iOS 15.0, *)) {
        return ^(NSDirectionalRectEdge imagePlacement,CGFloat padding){
            SS;
            UIButtonConfiguration *con = [UIButtonConfiguration plainButtonConfiguration];
            con.imagePadding = padding;
            con.imagePlacement = imagePlacement;
            [strongSelf setConfiguration:con];
            return strongSelf;
        };
    }else{
        return ^(NSDirectionalRectEdge imagePlacement,CGFloat padding){
            SS;
            return strongSelf;
        };
    }
}
    
- (void)buttonCliced:(UIButton *)but{
    HHButtonClicked block = objc_getAssociatedObject(self, _cmd);
    if (block) {
        block(but);
    }
}

- (void)hh_buttonClicked:(HHButtonClicked)buttonClickedBlock{
    if (buttonClickedBlock) {
        objc_setAssociatedObject(self, @selector(buttonCliced:), buttonClickedBlock, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
        [self addTarget:self action:@selector(buttonCliced:) forControlEvents:UIControlEventTouchUpInside];
    }
}

@end
    
