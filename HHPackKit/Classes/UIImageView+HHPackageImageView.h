//
//  UIImageView+HHPackageImageView.h
//  HHKit
//
//  Created by lch on 2021/12/19.
//

#import <UIKit/UIKit.h>
#import "HHKit.h"
NS_ASSUME_NONNULL_BEGIN

@interface UIImageView (HHPackageImageView)
- (UIImageView *(^)(CGRect rect))hh_frame;
- (UIImageView *(^)(UIColor *color))hh_backgroundColor;
- (UIImageView *(^)(NSInteger cornerRadiusNum))hh_cornerRadius;
- (UIImageView *(^)(CGFloat borderWidthNum))hh_borderWidth;
- (UIImageView *(^)(UIColor *borderColor))hh_borderColor;
- (UIImageView *(^)(BOOL masksToBounds))hh_masksToBounds;
- (UIImageView *(^)(NSString *imageString))hh_image;
- (UIImageView *(^)(NSData *imageData))hh_imageData;
- (UIImageView *(^)(BOOL userInteractionEnabled))hh_userInteractionEnabled;
@end

NS_ASSUME_NONNULL_END
