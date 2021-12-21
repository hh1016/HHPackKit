//
//  UITableView+HHPackageTableView.m
//  HHKit
//
//  Created by lch on 2021/12/20.
//

#import "UITableView+HHPackageTableView.h"



//@property (nonatomic) CGFloat estimatedSectionFooterHeight


@implementation UITableView (HHPackageTableView)

- (UITableView *(^)(CGFloat rowHeight))rowHeight{
    WS;
    return ^(CGFloat rowHeight){
        SS;
        strongSelf.rowHeight = rowHeight;
        return strongSelf;
    };
}
- (UITableView *(^)(CGFloat sectionHeaderHeight))sectionHeaderHeight{
    WS;
    return ^(CGFloat sectionHeaderHeight){
        SS;
        strongSelf.sectionHeaderHeight = sectionHeaderHeight;
        return strongSelf;
    };
}
- (UITableView *(^)(CGFloat sectionFooterHeight))sectionFooterHeight{
    WS;
    return ^(CGFloat sectionFooterHeight){
        SS;
        strongSelf.sectionFooterHeight = sectionFooterHeight;
        return strongSelf;
    };
}
- (UITableView *(^)(CGFloat estimatedRowHeight))estimatedRowHeight{
    WS;
    return ^(CGFloat estimatedRowHeight){
        SS;
        strongSelf.estimatedRowHeight = estimatedRowHeight;
        return strongSelf;
    };
}
- (UITableView *(^)(CGFloat estimatedSectionHeaderHeight))estimatedSectionHeaderHeight{
    WS;
    return ^(CGFloat estimatedSectionHeaderHeight){
        SS;
        strongSelf.estimatedSectionHeaderHeight = estimatedSectionHeaderHeight;
        return strongSelf;
    };
}
- (UITableView *(^)(CGFloat estimatedSectionFooterHeight))estimatedSectionFooterHeight{
    WS;
    return ^(CGFloat estimatedSectionFooterHeight){
        SS;
        strongSelf.estimatedSectionFooterHeight = estimatedSectionFooterHeight;
        return strongSelf;
    };
}

- (UITableView *(^)(CGFloat sectionHeaderTopPadding))sectionHeaderTopPadding{
    WS;
    return ^(CGFloat sectionHeaderTopPadding){
        SS;
        strongSelf.sectionHeaderTopPadding = sectionHeaderTopPadding;
        return strongSelf;
    };
}
@end
