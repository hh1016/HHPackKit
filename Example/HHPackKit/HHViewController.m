//
//  HHViewController.m
//  HHKit
//
//  Created by hh1016 on 12/20/2021.
//  Copyright (c) 2021 hh1016. All rights reserved.
//

#import "HHViewController.h"
#import <HHPackKit/HHKit.h>

@interface HHViewController ()

@end

@implementation HHViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    UIView *view = [[UIView alloc]init];
    [self.view addSubview:view];
    view.hh_frame(CGRectMake(50, 100, 100, 100))
        .hh_backgroundColor(UIColor.cyanColor)
        .hh_cornerRadius(10);

    UILabel *label = [[UILabel alloc]init];
    [self.view addSubview:label];
    label.hh_frame(CGRectMake(50, 250, 300, 50))
        .hh_backgroundColor(UIColor.cyanColor)
        .hh_text(@"label3")
        .hh_systemFont(30)
        .hh_textAlignment(NSTextAlignmentCenter);
    
    UIButton *but = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.view addSubview:but];
    but.hh_frame(CGRectMake(50, 350, 100, 100))
        .hh_textNormal(@"按钮")
        .hh_systemFont(18)
        .hh_backgroundColor(UIColor.cyanColor)
        .hh_textColorNormal(UIColor.redColor)
        .hh_cornerRadius(10)
        .hh_masksToBounds(YES)
        .hh_addTarget(self,@selector(butClicked))
        .hh_imageColorNormal(@"img_feedback_icon");
    if (@available(iOS 15,*)) {
        but.hh_ImageDirectionalRectIOS15Later(NSDirectionalRectEdgeTop,20);
    }else{
        but.hh_ImageDirectionalRect(HHImagePositionTop,20);
    };
    
    [but hh_buttonClicked:^(UIButton * _Nonnull button) {
        NSLog(@"按钮点击了 ---- ");
    }];
    
    UIImageView *imageView = [[UIImageView alloc]init];
    [self.view addSubview:imageView];
    imageView.hh_frame(CGRectMake(200, 350, 100, 100))
        .hh_image(@"qyCard_already")
        .hh_cornerRadius(5);

    UITextField *tf = [[UITextField alloc]init];
    [self.view addSubview:tf];
    
    tf.hh_frame(CGRectMake(50, 500, 300, 50))
        .hh_placeholderTextColor(@"请输入汉子",UIColor.cyanColor)
        .hh_textColor(UIColor.redColor)
        .hh_borderColor(UIColor.cyanColor)
        .hh_borderWidth(1)
        .hh_leftViewAndSapce(@"img_feedback_icon",10,10)
        .hh_leftViewMode(UITextFieldViewModeAlways)
        .hh_systemFont(20)
        .hh_addTarget(self,@selector(tfClicked:))
        .hh_keyboardType(UIKeyboardTypeDefault)
        .hh_returnKeyType(UIReturnKeyDone)
        ;
}

- (void)butClicked{
    NSLog(@"点击按钮");
}
- (void)tfClicked:(UITextField *)textField{
    if (textField.markedTextRange == nil){
        NSLog(@"tf ---  %@",textField.text);
    }
}
@end
