//
//  UITextField+HHPackageTextFiled.m
//  HHKit
//
//  Created by lch on 2021/12/19.
//

#import "UITextField+HHPackageTextFiled.h"

@implementation UITextField (HHPackageTextFiled)

#pragma mark - UITextField 的方法
- (UITextField *(^)(CGRect rect))hh_frame{
    WS;
    return ^(CGRect rect){
        SS;
        strongSelf.frame = rect;
        strongSelf.autocorrectionType = UITextAutocorrectionTypeNo;
        strongSelf.autocapitalizationType = UITextAutocapitalizationTypeNone;
        strongSelf.clearButtonMode = UITextFieldViewModeWhileEditing;
        return strongSelf;
    };
}
- (UITextField *(^)(NSString *textString))hh_text{
    WS;
    return ^(NSString *textString){
        SS;
        strongSelf.text = textString;
        return strongSelf;
    };
}
- (UITextField *(^)(UIColor *color))hh_textColor{
    WS;
    return ^(UIColor *color){
        SS;
        strongSelf.textColor = color;
        return strongSelf;
    };
}
- (UITextField *(^)(UIColor *color))hh_backgroundColor{
    WS;
    return ^(UIColor *color){
        SS;
        strongSelf.backgroundColor = color;
        return strongSelf;
    };
}
- (UITextField *(^)(NSInteger cornerRadiusNum))hh_cornerRadius{
    WS;
    return ^(NSInteger cornerRadiusNum){
        SS;
        strongSelf.layer.cornerRadius = cornerRadiusNum;
        return strongSelf;
    };
}
- (UITextField *(^)(CGFloat borderWidthNum))hh_borderWidth{
    WS;
    return ^(CGFloat borderWidthNum){
        SS;
        strongSelf.layer.borderWidth = borderWidthNum;
        return strongSelf;
    };
}
- (UITextField *(^)(UIColor *borderColor))hh_borderColor{
    WS;
    return ^(UIColor *borderColor){
        SS;
        strongSelf.layer.borderColor = borderColor.CGColor;
        return strongSelf;
    };
}
- (UITextField *(^)(CGFloat systemFontNum))hh_systemFont{
    WS;
    return ^(CGFloat systemFontNum){
        SS;
        strongSelf.font = [UIFont systemFontOfSize:systemFontNum];
        return strongSelf;
    };
}
- (UITextField *(^)(CGFloat boldSystemFontNum))hh_boldSystemFont{
    WS;
    return ^(CGFloat boldSystemFontNum){
        SS;
        strongSelf.font = [UIFont boldSystemFontOfSize:boldSystemFontNum];
        return strongSelf;
    };
}
- (UITextField *(^)(NSString *placeholder))hh_placeholder{
    WS;
    return ^(NSString *placeholder){
        SS;
        strongSelf.placeholder = placeholder;
        return strongSelf;
    };
}
/**
 placeholder        提示语
 color              提示语字体颜色
 */
- (UITextField *(^)(NSString *placeholder,UIColor *color))hh_placeholderTextColor{
    WS;
    return ^(NSString *placeholder,UIColor *color){
        SS;
        strongSelf.placeholder = placeholder;
        NSAttributedString *attrString = [[NSAttributedString alloc] initWithString:placeholder attributes:
            @{NSForegroundColorAttributeName:color}];
        strongSelf.attributedPlaceholder = attrString;
        return strongSelf;
    };
}
- (UITextField *(^)(NSTextAlignment textAlignment))hh_textAlignment{
    WS;
    return ^(NSTextAlignment textAlignment){
        SS;
        strongSelf.textAlignment = textAlignment;
        return strongSelf;
    };
}
- (UITextField *(^)(UIView *leftView))hh_leftView{
    WS;
    return ^(UIView *leftView){
        SS;
        strongSelf.leftView = leftView;
        return strongSelf;
    };
}
- (UITextField *(^)(UIView *rightView))hh_rightView{
    WS;
    return ^(UIView *rightView){
        SS;
        strongSelf.rightView = rightView;
        return strongSelf;
    };
}
- (UITextField *(^)(UITextFieldViewMode leftViewMode))hh_leftViewMode{
    WS;
    return ^(UITextFieldViewMode leftViewMode){
        SS;
        strongSelf.leftViewMode = leftViewMode;
        return strongSelf;
    };
}
- (UITextField *(^)(UITextFieldViewMode rightViewMode))hh_rightViewMode{
    WS;
    return ^(UITextFieldViewMode rightViewMode){
        SS;
        strongSelf.rightViewMode = rightViewMode;
        return strongSelf;
    };
}
/**
 左边视图为imageView；
 imageString     图片名称
 imageLeftSapce  左边距
 imageRightSapce 右边距
 */
- (UITextField *(^)(NSString *imageString,CGFloat imageLeftSapce,CGFloat imageRightSapce))hh_leftViewAndSapce{
    WS;
    return ^(NSString *imageString,CGFloat imageLeftSapce,CGFloat imageRightSapce){
        SS;
        UIImage *image = [UIImage imageNamed:imageString];
        UIView *view = [[UIView alloc]initWithFrame:CGRectMake(0, 0,imageLeftSapce + image.size.width + imageRightSapce, CGRectGetHeight(strongSelf.frame))];
        UIImageView *imageView = [[UIImageView alloc]initWithFrame:CGRectMake(imageLeftSapce, CGRectGetHeight(strongSelf.frame)/2 - image.size.height/2, image.size.width, image.size.height)];
        imageView.image = image;
        [view addSubview:imageView];
        strongSelf.leftView = view;
        
        return strongSelf;
    };
}
- (UITextField *(^)(BOOL secureTextEntry))hh_secureTextEntry{
    WS;
    return ^(BOOL secureTextEntry){
        SS;
        strongSelf.secureTextEntry = secureTextEntry;
        return strongSelf;
    };
}

- (UITextField *(^)(UIViewController *viewController,SEL action))hh_addTarget{
    WS;
    return ^(UIViewController *viewController,SEL action){
        SS;
        [strongSelf addTarget:viewController action:action forControlEvents:UIControlEventEditingChanged];
        return strongSelf;
    };
}
- (UITextField *(^)(UIKeyboardType keyboardType))hh_keyboardType{
    WS;
    return ^(UIKeyboardType keyboardType){
        SS;
        strongSelf.keyboardType = keyboardType;
        return strongSelf;
    };
}
- (UITextField *(^)(UIReturnKeyType returnKeyType))hh_returnKeyType{
    WS;
    return ^(UIReturnKeyType returnKeyType){
        SS;
        strongSelf.returnKeyType = returnKeyType;
        return strongSelf;
    };
}
@end
