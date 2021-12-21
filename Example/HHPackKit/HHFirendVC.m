//
//  HHFirendVC.m
//  HHKit_Example
//
//  Created by lch on 2021/12/20.
//  Copyright © 2021 hh1016. All rights reserved.
//

#import "HHFirendVC.h"
#import <HHPackKit/HHKit.h>
#import "HHTableViewCell.h"

@interface HHFirendVC ()

@end

@implementation HHFirendVC

- (void)viewDidLoad {
    [super viewDidLoad];
    HHTableView *tableView = [[HHTableView alloc]initPlainTableViewFrame:CGRectMake(0, 88, CGRectGetWidth(self.view.frame), 800) tableViewCell:[HHTableViewCell class] reuseIdentifier:@"cell" cellHeight:50];
    [self.view addSubview:tableView];
    
    tableView.hh_numberOfRow(^NSInteger(UITableView * _Nonnull tableView, NSInteger section) {
        return 10;
    }).hh_viewForCell(^(UITableView * _Nonnull tableView, UITableViewCell * _Nonnull cell, NSIndexPath * _Nonnull indexPath) {
       
        cell.textLabel.text = [NSString stringWithFormat:@"第%ld行",indexPath.row];
        
    }).hh_didSelectRowAtIndexPath(^(UITableView * _Nonnull tableView, NSIndexPath * _Nonnull indexPath) {
        NSLog(@"点击了第%ld行",indexPath.row);
    }).hh_viewForHeader(^UIView * _Nullable(UITableView * _Nonnull tableView, NSInteger section) {
        UIView *view = [[UIView alloc]initWithFrame:CGRectMake(0, 0, CGRectGetWidth(self.view.frame), 120)];
        view.backgroundColor = [UIColor cyanColor];
        return view;
    }).hh_heightForHeader(^CGFloat(UITableView * _Nonnull tableView, NSInteger section) {
        return 120;
    });
}

@end
